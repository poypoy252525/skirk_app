import 'dart:convert';

import 'package:skirk_app/core/data/datasources/remote_datasource.dart';
import 'package:skirk_app/core/data/model/animepahe_episode_response_model/animepahe_episode_response_model.dart';

class AnimepaheRemoteDatasource extends RemoteDatasource {
  final baseURL = 'https://animepahe.ru';

  AnimepaheRemoteDatasource(super.client);

  Future<AnimepaheEpisodeResponseModel> getAnimepaheEpisodes({
    int? page = 1,
    required String session,
  }) async {
    final response = await client.get(
      Uri.parse(
        '$baseURL/api?m=release&id=$session&sort=episode_desc&page=$page',
      ),
      headers: {'Cookie': '__ddg2_=;'},
    );

    return AnimepaheEpisodeResponseModel.fromJson(jsonDecode(response.body));
  }
}
