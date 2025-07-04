import 'dart:convert';

import 'package:http/http.dart';
import 'package:skirk_app/features/anime_details/data/models/episode_model/episode_model.dart';

class EpisodeRemoteDatasource {
  final Client _client;

  EpisodeRemoteDatasource(this._client);

  Future<List<EpisodeModel>> getEpisodes(int mediaId) async {
    final response = await _client.get(
      Uri.parse('https://delflay-server.vercel.app/anime/$mediaId/episodes'),
    );

    if (response.statusCode == 200) {
      final List decoded = jsonDecode(response.body);
      return decoded.map((el) => EpisodeModel.fromJson(el)).toList();
    } else {
      throw Exception(
        'Failed to get episode list from $mediaId with status code: ${response.statusCode}',
      );
    }
  }
}
