import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/episode_sources_model/episode_sources_model.dart';

class VidwishExtractor {
  final String _baseUrl = 'https://vidwish.live';
  final Client _client;

  VidwishExtractor(this._client);

  Future<EpisodeSourcesModel> extract({
    required String episodeId,
    String type = 'sub',
  }) async {
    final url = '$_baseUrl/stream/s-2/$episodeId/$type';
    var response = await _client.get(
      Uri.parse(url),
      headers: {
        // 'X-Requested-With': 'XMLHttpRequest',
        'Referer': _baseUrl,
      },
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load episode sources');
    }

    final document = parse(response.body);
    final dataId = document
        .getElementById('megaplay-player')
        ?.attributes['data-id'];

    if (dataId == null) {
      throw Exception('Failed to extract episode ID');
    }

    final sourcesUrl = '$_baseUrl/stream/getSources?id=$dataId';

    response = await _client.get(
      Uri.parse(sourcesUrl),
      headers: {'X-Requested-With': 'XMLHttpRequest', 'Referer': sourcesUrl},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to load sources');
    }

    final data = jsonDecode(response.body);

    return EpisodeSourcesModel(
      referer: _baseUrl,
      encrypted: false,
      intro: TimeSkipModel.fromJson(data['intro']),
      outro: TimeSkipModel.fromJson(data['outro']),
      server: data['server'],
      sources: [SourceModel.fromJson(data['sources'])],
      tracks: (data['tracks'] as List)
          .map((item) => TrackModel.fromJson(item))
          .toList(),
    );
  }
}
