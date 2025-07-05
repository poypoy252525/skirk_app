import 'dart:convert';

import 'package:http/http.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/features/video_player/data/models/episode_sources_model.dart';

class EpisodeSourcesRemoteDatasource {
  final Client _client;

  EpisodeSourcesRemoteDatasource(this._client);

  Future<EpisodeSourcesModel> getEpisodes({
    required String episodeId,
    String? server,
    String? category,
  }) async {
    final response = await _client.get(
      Uri.parse(
        '$skirkAPI/anime/sources?episodeId=$episodeId&server=$server&category=$category',
      ),
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final decoded = jsonDecode(response.body);
      final episodeSourcesModel = EpisodeSourcesModel.fromJson(decoded);
      return episodeSourcesModel;
    } else {
      throw Exception(
        'Failed to fetch episode sources with the status code: ${response.statusCode}',
      );
    }
  }
}
