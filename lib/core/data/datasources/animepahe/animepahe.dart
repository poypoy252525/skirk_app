import 'dart:convert';

import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/animepahe/animepahe_episode_model.dart';
import 'package:skirk_app/core/data/model/animepahe/animepahe_sources_model.dart';
import 'package:skirk_app/extractors/kwik_extractor.dart';

class Animepahe {
  final String _baseURL = 'https://animepahe.ru';
  final _malsyncUrl = 'https://api.malsync.moe';
  final Client client;
  late KwikExtractor _extractor;

  Animepahe(this.client) {
    _extractor = KwikExtractor(client);
  }

  final Map<String, String> _headers = {'Cookie': '__ddg2_=;'};

  Future<String> _getAnimepaheId({required int malId}) async {
    final response = await client.get(
      Uri.parse('$_malsyncUrl/mal/anime/$malId'),
    );
    final json = jsonDecode(response.body);
    final animepahe = json['Sites']['animepahe'] as Map<String, dynamic>;

    final animepaheId = animepahe.keys.first;

    return animepaheId;
  }

  Future<List<AnimepaheEpisodeModel>> getEpisodes({
    required int malId,
    int page = 1,
  }) async {
    final animepaheId = await _getAnimepaheId(malId: malId);
    var response = await client.get(
      Uri.parse('$_baseURL/a/$animepaheId'),
      headers: _headers,
    );
    final regex = RegExp(r'let.*?id.*?"(.*?)";');
    final matches = regex.firstMatch(response.body);
    final id = matches!.group(1);

    response = await client.get(
      Uri.parse('$_baseURL/api?m=release&id=$id&sort=episode_asc&page=$page'),
      headers: _headers,
    );

    if (response.statusCode < 300) {
      final parsedResponse = AnimepaheEpisodeResponseModel.fromJson(
        jsonDecode(response.body),
      );

      return parsedResponse.data!.map((item) {
        item.session = '$id/${item.session}';
        item.duration = item.duration?.startsWith('00') ?? true
            ? item.duration?.replaceFirst('00:', '')
            : item.duration;

        return item;
      }).toList();
    } else {
      return [];
    }
  }

  Future<List<AnimepaheSourcesModel>> getSources(String id) async {
    final sources = await _extractor.extract(id: id);
    return sources.map((source) {
      return AnimepaheSourcesModel.fromJson(source);
    }).toList()..sort(
      (a, b) => (double.parse(
        b.resolution!,
      ).compareTo(double.parse(a.resolution!))).toInt(),
    );
  }
}
