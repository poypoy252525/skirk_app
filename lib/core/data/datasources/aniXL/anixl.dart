import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/episode_model.dart';
import 'package:string_similarity/string_similarity.dart';

class AniXL {
  final String _baseUrl = 'https://anixl.to';
  final Client _client;
  final _malsyncUrl = 'https://api.malsync.moe';

  AniXL(this._client);

  Future<String> _getAniXLId({required int idMal}) async {
    final response = await _client.get(
      Uri.parse('$_malsyncUrl/mal/anime/$idMal'),
    );

    if (response.statusCode != 200) {
      throw Exception(
        'error getting anixl id from malsync with status code: ${response.statusCode}',
      );
    }

    final json = jsonDecode(response.body);
    if (json['Sites']['AniXL'] == null) {
      final title = (json['title'] as String).toLowerCase().replaceAll(
        ' ',
        '-',
      );
      final resp = await _client.get(Uri.parse('$_baseUrl/search?word=$title'));
      final document = parse(resp.body);
      final elements = document.querySelectorAll('a[q\\:id]').map((element) {
        return element.attributes['href'];
      }).toList();

      if (elements.isEmpty) {
        throw Exception('AniXL anime not found.');
      }

      final results = StringSimilarity.findBestMatch('/title/$title', elements);

      print('rating: ${results.bestMatch.rating}');

      return results.bestMatch.target!.split('/').last;
    }
    var anixl = json['Sites']['AniXL'] as Map<String, dynamic>;

    anixl = anixl.values.first as Map<String, dynamic>;

    final url = anixl['url'] as String;

    return url.split('/').last;
  }

  Future<List<EpisodeModel>> getEpisodes({required int idMal}) async {
    final id = await _getAniXLId(idMal: idMal);

    final url = '$_baseUrl/title/$id';

    final response = await _client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception(
        'error requesting from $url with status code: ${response.statusCode}',
      );
    }

    final document = parse(response.body);
    final elements = document.querySelectorAll('a[q\\:id][q\\:key]').map((
      element,
    ) {
      final path = element.attributes['href'];

      return EpisodeModel(id: path ?? '', number: int.parse(element.text));
    }).toList();

    return elements;
  }

  Future<dynamic> getEpisodeSources({required String episodeId}) async {
    final url = '$_baseUrl/$episodeId';
    final response = await _client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to fetch data from $url with status code: ${response.statusCode}',
      );
    }

    final document = parse(response.body);

    final element = document.querySelector('script[type="qwik/json"]');

    if (element == null) {
      throw Exception('No data found');
    }

    final data = jsonDecode(element.text);
    final regex = RegExp(r'http.*?m3u8');
    return (data['objs'] as List)
        .where((item) => item is String && regex.hasMatch(item))
        .toList();
  }
}
