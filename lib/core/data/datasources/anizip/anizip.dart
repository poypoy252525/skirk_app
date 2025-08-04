import 'dart:convert';

import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/anizip/anizip_episode_metadata_model.dart';

class Anizip {
  final Client client;
  final String _baseUrl = 'https://api.ani.zip';

  Anizip(this.client);

  Future<List<AnizipEpisodeMetadataModel>> getEpisodeMetadata({
    required int malId,
  }) async {
    final response = await client.get(
      Uri.parse('$_baseUrl/mappings?mal_id=$malId'),
    );
    final jsonResponse = jsonDecode(response.body) as Map<String, dynamic>;

    List<AnizipEpisodeMetadataModel> episodes = [];

    for (final key in (jsonResponse['episodes'] as Map<String, dynamic>).keys) {
      if (key.contains(r'[A-Za-z]')) break;
      episodes.add(
        AnizipEpisodeMetadataModel.fromJson(jsonResponse['episodes'][key]),
      );
    }

    return episodes;
  }
}
