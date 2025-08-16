import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/episode_model.dart';
import 'package:skirk_app/core/data/model/episode_sources_model/episode_sources_model.dart';
import 'package:string_similarity/string_similarity.dart';

class Gogoanime {
  final Client _client;
  final String _baseUrl = 'https://w1.123animes.ru';
  final String _malsyncUrl = 'https://api.malsync.moe';

  Gogoanime(this._client);

  Future<String> _getGogoanimeId({required int idMal}) async {
    final url = '$_malsyncUrl/mal/anime/$idMal';
    final response = await _client.get(Uri.parse(url));

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to get the id from $url with the status code: ${response.statusCode}',
      );
    }

    final removeString = [
      'movie',
      'cour',
      'season',
      'movies',
      'part',
      'the',
      'and',
      'of',
      'in',
      'on',
    ];

    final json = jsonDecode(response.body);
    final title = (json['title'] as String);
    final slug = title
        .toLowerCase()
        .replaceAll(RegExp(r'[^A-Za-z0-9\s]'), '')
        .replaceAll(' ', '-')
        .trim();

    String search = title
        .replaceAll(RegExp(r'[^A-Za-z\s]'), ' ')
        .replaceAll(
          RegExp(
            r'\b(?:' + removeString.join('|') + r')\b',
            caseSensitive: false,
          ),
          '',
        )
        .trim();

    if (search.split(' ').length > 5) {
      search = search.split(' ').sublist(0, 4).join(' ');
    }

    print('search: $search');
    print('slug: $slug');

    final resp = await _client.get(
      Uri.parse('$_baseUrl/search?keyword=$search'),
      headers: {'Referer': _baseUrl},
    );

    final document = parse(resp.body);
    final ids = document
        .querySelectorAll('div.film-list > div.item a.name')
        .map((element) => element.attributes['href'])
        .toList();

    final result = '/anime/$slug'.bestMatch(ids);

    print('best target: ${result.bestMatch.target}');
    print('rating: ${result.bestMatch.rating}');

    return result.bestMatch.target?.replaceFirst('/anime/', '') ??
        'no id found';
  }

  Future<List<EpisodeModel>> getEpisodes({required int idMal}) async {
    final id = await _getGogoanimeId(idMal: idMal);

    final url = '$_baseUrl/ajax/film/sv?id=$id';
    final response = await _client.get(
      Uri.parse(url),
      headers: {'Referer': _baseUrl},
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to request from $url with code: ${response.statusCode}',
      );
    }

    final json = jsonDecode(response.body);

    final document = parse(json['html']);

    final serverId = document
        .querySelector('div[data-id]')
        ?.attributes['data-id'];

    final episodes = document
        .querySelectorAll('a[data-id]')
        .map(
          (element) => EpisodeModel(
            id: '${element.attributes['data-id']}/$serverId',
            number: double.parse(element.text).floor(),
          ),
        )
        .toList();

    print("html episode: ${episodes[0].id}");

    return episodes;
  }

  Future<EpisodeSourcesModel> getEpisodeSources({
    required String episodeId,
  }) async {
    final url = '$_baseUrl/ajax/episode/info?epr=$episodeId';
    var response = await _client.get(
      Uri.parse(url),
      headers: {'Referer': _baseUrl},
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to request from $url with code: ${response.statusCode}',
      );
    }

    print("episode ID: $episodeId");

    final json = jsonDecode(response.body);
    print("embed link: ${json['target']}");

    final embedLink = json['target'] as String;

    final id = embedLink.split('/').last;
    print('link: $id');

    response = await _client.get(
      Uri.parse('https://play.bunnycdn.to/hs/getSources?id=$id'),
      headers: {"Referer": 'https://play.bunnycdn.to/hs/getSources?id=$id'},
    );

    if (response.statusCode != 200) {
      throw Exception(
        'Failed to request from $url with code: ${response.statusCode}',
      );
    }

    print('result ${response.body}');

    final sources = jsonDecode(response.body);

    return EpisodeSourcesModel(
      referer: 'https://play.bunnycdn.to/',
      encrypted: false,
      intro: sources['intro'] != null
          ? TimeSkipModel.fromJson(sources['intro'])
          : null,
      outro: sources['outro'] != null
          ? TimeSkipModel.fromJson(sources['outro'])
          : null,
      sources: [SourceModel(file: sources['sources'], type: 'hls')],
      tracks: (sources['tracks'] as List?)
          ?.map((track) => TrackModel.fromJson(track))
          .toList(),
    );
  }
}
