import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/data/model/episode_model.dart';
import 'package:skirk_app/core/data/model/episode_sources_model/episode_sources_model.dart';
import 'package:skirk_app/extractors/megacloud_extractor.dart';
import 'package:skirk_app/extractors/megaplay_extractor.dart';
import 'package:skirk_app/extractors/vidwish_extractor.dart';

class Hianime {
  final _baseURL = 'https://hianime.to';
  final Client _client;
  final userAgent =
      'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Mobile Safari/537.36';
  final keyUrl =
      'https://raw.githubusercontent.com/yogesh-hacker/MegacloudKeys/refs/heads/main/keys.json';

  late MegacloudExtractor _megacloudExtractor;
  late MegaplayExtractor _megaplayExtractor;
  late VidwishExtractor _vidwishExtractor;

  Hianime(this._client) {
    _megaplayExtractor = MegaplayExtractor(_client);
    _megacloudExtractor = MegacloudExtractor(_client);
    _vidwishExtractor = VidwishExtractor(_client);
  }

  Future<String> _getHianimeByMalId({required int malId}) async {
    final response = await _client.get(
      Uri.parse('$malsyncUrl/mal/anime/$malId'),
    );
    final decoded =
        jsonDecode(response.body)['Sites']['Zoro'] as Map<String, dynamic>;
    final hianimeId = decoded.keys.first;
    return hianimeId;
  }

  Future<List<EpisodeModel>> getEpisodes({required int malId}) async {
    final hianimeId = await _getHianimeByMalId(malId: malId);

    final [anizip, response] = await Future.wait([
      _client.get(Uri.parse('https://api.ani.zip/mappings?mal_id=$malId')),
      _client.get(Uri.parse('$_baseURL/ajax/v2/episode/list/$hianimeId')),
    ]);

    final anizipEpisodes = jsonDecode(anizip.body)['episodes'];

    final document = parse(jsonDecode(response.body)['html']);

    final episodes = document.getElementsByClassName('ep-item').map((item) {
      final episodeNumber = item.attributes['data-number'];
      final anizipEpisode = anizipEpisodes[episodeNumber];
      final anizipTitle = anizipEpisode?['title'];
      final description =
          anizipEpisode?['overview'] ?? anizipEpisode?['summary'];

      return EpisodeModel(
        id: item.attributes['data-id']!,
        number: int.parse(episodeNumber!),
        title:
            anizipTitle?['en'] ??
            anizipTitle?['ja'] ??
            item.attributes['title'],
        description: description,
        image: anizipEpisode?['image'],
      );
    }).toList();

    return episodes;
  }

  Future<List<Server>> _getServers({required String episodeId}) async {
    final response = await _client.get(
      Uri.parse('$_baseURL/ajax/v2/episode/servers?episodeId=$episodeId'),
    );

    final document = parse(jsonDecode(response.body)['html']);

    final servers = document.getElementsByClassName('server-item').map((item) {
      return Server(
        dataId: item.attributes['data-id']!,
        dataType: item.attributes['data-type']!,
        name: item.children.first.innerHtml,
      );
    }).toList();

    return servers;
  }

  // Future<String?> _getEmbedLink({required String serverId}) async {
  //   final uri = Uri.parse(
  //     'https://hianime.to/ajax/v2/episode/sources?id=$serverId',
  //   );
  //   final response = await client.get(uri);

  //   final embedLink = jsonDecode(response.body)['link'];

  //   return embedLink;
  // }

  Future<EpisodeSourcesModel> getSources({
    required String episodeId,
    HianimeProvider provider = HianimeProvider.megacloud,
    String serverName = 'HD-1',
    String type = 'sub',
  }) async {
    // print('$provider');

    if (provider == HianimeProvider.megaplay) {
      try {
        final megaplay = await _megaplayExtractor.extract(episodeId: episodeId);

        return megaplay;
      } catch (e) {
        print(e);
        return EpisodeSourcesModel(referer: '');
      }
    }

    if (provider == HianimeProvider.vidwish) {
      return _vidwishExtractor.extract(episodeId: episodeId, type: type);
    }

    final servers = await _getServers(episodeId: episodeId);

    final server = servers.firstWhere(
      (server) => server.name == serverName && server.dataType == type,
      orElse: () => servers[0],
    );

    final providerUrl =
        'https://hianime.to/ajax/v2/episode/sources?id=${server.dataId}';

    final providerResp = await _client.get(Uri.parse(providerUrl));
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

    final [htmlResp, keyResp] = await Future.wait([
      _client.get(Uri.parse(baseUrl), headers: headers),
      _client.get(Uri.parse(keyUrl)),
    ]);
    final keyJson = jsonDecode(keyResp.body);
    final key = keyJson['mega'];
    //
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

    final sourcesResp = await _client.get(
      Uri.parse(
        '$defaultDomain/embed-2/v3/e-1/getSources?id=$fileId&_k=$nonce',
      ),
      headers: headers,
    );
    //

    var sourcesJson = jsonDecode(sourcesResp.body);

    if (sourcesJson['encrypted']) {
      final decryptedSources = await _megacloudExtractor.decrypt(
        Uri.encodeComponent(sourcesJson['sources']),
        Uri.encodeComponent(key),
        Uri.encodeComponent(nonce),
      );

      print(decryptedSources);
      sourcesJson['sources'] = jsonDecode(decryptedSources);
    }

    sourcesJson['referer'] = 'https://megacloud.blog/';

    return EpisodeSourcesModel.fromJson(sourcesJson);
  }
}

class Server {
  final String dataId;
  final String dataType;
  final String name;

  Server({required this.dataId, required this.dataType, required this.name});
}

enum HianimeProvider { megacloud, megaplay, vidwish }
