import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:skirk_app/core/data/datasources/remote_datasource.dart';
import 'package:skirk_app/core/data/model/hianime_episode_source_model/hianime_episode_sources_model.dart';

const userAgent =
    'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36';
const decodeBaseUrl =
    'https://script.google.com/macros/s/AKfycbx-yHTwupis_JD0lNzoOnxYcEYeXmJZrg7JeMxYnEZnLBy5V0--UxEvP-y9txHyy1TX9Q/exec';
const keyUrl =
    'https://raw.githubusercontent.com/yogesh-hacker/MegacloudKeys/refs/heads/main/keys.json';

class HianimeServerModel {
  final String? dataId;
  final String? dataType;
  final String? name;

  HianimeServerModel({this.dataId, this.dataType, this.name});
}

class HianimeEpisodeSourceRemoteDatasource extends RemoteDatasource {
  HianimeEpisodeSourceRemoteDatasource(super.client);

  final String _baseURL = 'https://megaplay.buzz';
  Future<List<HianimeServerModel>> getServers({
    required String episodeId,
  }) async {
    final response = await client.get(
      Uri.parse(
        'https://hianime.to/ajax/v2/episode/servers?episodeId=$episodeId',
      ),
    );

    final document = parse(jsonDecode(response.body)['html']);

    final servers = document.getElementsByClassName('server-item').map((item) {
      return HianimeServerModel(
        dataId: item.attributes['data-id'],
        dataType: item.attributes['data-type'],
        name: item.children.first.innerHtml,
      );
    }).toList();

    return servers;
  }

  Future<String?> getEmbedLink({required String serverId}) async {
    final uri = Uri.parse(
      'https://hianime.to/ajax/v2/episode/sources?id=$serverId',
    );
    final response = await client.get(uri);

    final embedLink = jsonDecode(response.body)['link'];

    debugPrint(embedLink);

    return embedLink;
  }

  Future<HianimeEpisodeSourcesModel> getRealSources({
    required String episodeId,
    String? type,
  }) async {
    final [megaplaySource, encryptedSource] = await Future.wait([
      getMegaplaySources(episodeId: episodeId, type: type),
      _getEncryptedSources(episodeId: episodeId),
    ]);

    return HianimeEpisodeSourcesModel(
      intro: encryptedSource.intro,
      outro: encryptedSource.outro,
      tracks: encryptedSource.tracks,
      server: megaplaySource.server,
      sources: megaplaySource.sources,
    );
  }

  Future<HianimeEpisodeSourcesModel> getMegaplaySources({
    required String episodeId,
    String? type,
  }) async {
    final urlStr = '$_baseURL/stream/s-2/$episodeId/${type ?? 'sub'}';
    var response = await client.get(
      Uri.parse(urlStr),
      headers: {'Referer': '$_baseURL/api'},
    );
    debugPrint(urlStr);

    final document = parse(response.body);

    final dataId = document
        .getElementById('megaplay-player')
        ?.attributes['data-id'];
    if (dataId == null) throw Exception('data id not found');

    response = await client.get(
      Uri.parse('$_baseURL/stream/getSources?id=$dataId'),
      headers: {"X-Requested-With": "XMLHttpRequest"},
    );

    return HianimeEpisodeSourcesModel.fromJson(jsonDecode(response.body));
  }

  Future<HianimeEpisodeSourcesModel> _getEncryptedSources({
    required String episodeId,
  }) async {
    final servers = await getServers(episodeId: episodeId);

    final providerUrl =
        'https://hianime.to/ajax/v2/episode/sources?id=${servers[0].dataId}';

    final providerResp = await client.get(Uri.parse(providerUrl));
    final providerJson = jsonDecode(providerResp.body);
    final baseUrl = providerJson['link'];

    final parsedUri = Uri.parse(baseUrl);

    final defaultDomain = '${parsedUri.scheme}://${parsedUri.host}';

    final headers = {
      'Accept': '*/*',
      'X-Requested-With': 'XMLHttpRequest',
      'Referer': defaultDomain,
      'User-Agent': userAgent,
    };

    // Fetch page HTML
    final htmlResp = await client.get(Uri.parse(baseUrl), headers: headers);
    // print(htmlResp.body);
    final document = parse(htmlResp.body);

    final videoTag = document.querySelector('#megacloud-player');
    if (videoTag == null) {}
    final fileId = videoTag?.attributes['data-id'];

    // Get nonce
    final body = htmlResp.body;
    final nonceRegex1 = RegExp(r'\b[a-zA-Z0-9]{48}\b');
    final nonceRegex3 = RegExp(
      r'\b([a-zA-Z0-9]{16})\b.*?\b([a-zA-Z0-9]{16})\b.*?\b([a-zA-Z0-9]{16})\b',
    );
    String? nonce;

    final match1 = nonceRegex1.firstMatch(body);
    final match3 = nonceRegex3.firstMatch(body);

    if (match3 != null && match3.groupCount == 3) {
      nonce = '${match3.group(1)!}${match3.group(2)!}${match3.group(3)!}';
    } else if (match1 != null) {
      nonce = match1.group(0);
    }

    if (nonce == null) {
      throw Exception('nonce not found');
    }
    // Get encrypted data

    final sourcesResp = await client.get(
      Uri.parse(
        '$defaultDomain/embed-2/v3/e-1/getSources?id=$fileId&_k=$nonce',
      ),
      headers: headers,
    );
    debugPrint(sourcesResp.body);

    final sourcesJson = jsonDecode(sourcesResp.body);

    return HianimeEpisodeSourcesModel(
      sources: Sources(),
      intro: TimeSkipModel.fromJson(sourcesJson['intro']),
      outro: TimeSkipModel.fromJson(sourcesJson['outro']),
      server: sourcesJson['server'],
      tracks: (sourcesJson['tracks'] as List<dynamic>).map((track) {
        return TrackModel.fromJson(track);
      }).toList(),
    );
  }

  // ignore: unused_element
  Future<String?> _getExtractedSource({required String serverId}) async {
    final providerUrl =
        'https://hianime.to/ajax/v2/episode/sources?id=$serverId';

    // Initial request
    final providerResp = await client.get(Uri.parse(providerUrl));
    final providerJson = jsonDecode(providerResp.body);
    final baseUrl = providerJson['link'];

    final parsedUri = Uri.parse(baseUrl);

    final defaultDomain = '${parsedUri.scheme}://${parsedUri.host}';

    final headers = {
      'Accept': '*/*',
      'X-Requested-With': 'XMLHttpRequest',
      'Referer': defaultDomain,
      'User-Agent': userAgent,
    };

    // Fetch page HTML
    final htmlResp = await client.get(Uri.parse(baseUrl), headers: headers);
    // print(htmlResp.body);
    final document = parse(htmlResp.body);

    final videoTag = document.querySelector('#megacloud-player');
    if (videoTag == null) {}
    final fileId = videoTag?.attributes['data-id'];

    // Get nonce
    final body = htmlResp.body;
    final nonceRegex1 = RegExp(r'\b[a-zA-Z0-9]{48}\b');
    final nonceRegex3 = RegExp(
      r'\b([a-zA-Z0-9]{16})\b.*?\b([a-zA-Z0-9]{16})\b.*?\b([a-zA-Z0-9]{16})\b',
    );
    String? nonce;

    final match1 = nonceRegex1.firstMatch(body);
    final match3 = nonceRegex3.firstMatch(body);

    if (match3 != null && match3.groupCount == 3) {
      nonce = '${match3.group(1)!}${match3.group(2)!}${match3.group(3)!}';
    } else if (match1 != null) {
      nonce = match1.group(0);
    }

    if (nonce == null) {
      return 'nonce not found';
    }

    // Get key
    final keyResp = await client.get(Uri.parse(keyUrl));
    final keyJson = jsonDecode(keyResp.body);
    final key = keyJson['mega'];

    // Get encrypted data

    final sourcesResp = await client.get(
      Uri.parse(
        '$defaultDomain/embed-2/v3/e-1/getSources?id=$fileId&_k=$nonce',
      ),
      headers: headers,
    );

    final sourcesJson = jsonDecode(sourcesResp.body);
    final encrypted = sourcesJson['sources'];

    String? videoUrl;

    if (encrypted != null && encrypted is String && encrypted.isNotEmpty) {
      final encryptedData = Uri.encodeQueryComponent(encrypted);
      final nonceEncoded = Uri.encodeQueryComponent(nonce);
      final keyEncoded = Uri.encodeQueryComponent(key);

      final decodeUri =
          '$decodeBaseUrl?encrypted_data=$encryptedData&nonce=$nonceEncoded&secret=$keyEncoded';

      final decodeResp = await client.get(Uri.parse(decodeUri));
      final fileMatch = RegExp(r'"file":"(.*?)"').firstMatch(decodeResp.body);
      if (fileMatch != null) {
        videoUrl = fileMatch.group(1)!;
      } else {}
    } else {
      videoUrl = sourcesJson['sources'][0]['file'];
    }

    return videoUrl;
  }
}
