import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/episode_sources_model/episode_sources_model.dart';

class MegaplayExtractor {
  final Client client;

  final String _baseURL = 'https://megaplay.buzz';
  MegaplayExtractor(this.client);

  Future<EpisodeSourcesModel> extract({
    required String episodeId,
    String type = 'sub',
  }) async {
    final urlStr = '$_baseURL/stream/s-2/$episodeId/$type';
    var response = await client.get(
      Uri.parse(urlStr),
      headers: {'Referer': '$_baseURL/'},
    );

    final document = parse(response.body);

    final dataId = document
        .getElementById('megaplay-player')
        ?.attributes['data-id'];
    if (dataId == null) throw Exception('data id not found');

    response = await client.get(
      Uri.parse('$_baseURL/stream/getSources?id=$dataId'),
      headers: {"X-Requested-With": "XMLHttpRequest"},
    );

    final sourcesJson = jsonDecode(response.body);

    return EpisodeSourcesModel(
      referer: _baseURL,
      encrypted: false,
      intro: TimeSkipModel.fromJson(sourcesJson['intro']),
      outro: TimeSkipModel.fromJson(sourcesJson['outro']),
      server: sourcesJson['server'],
      sources: [SourceModel.fromJson(sourcesJson['sources'])],
      tracks: (sourcesJson['tracks'] as List)
          .map((item) => TrackModel.fromJson(item))
          .toList(),
    );
  }
}
