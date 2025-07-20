import 'dart:convert';

import 'package:html/parser.dart';
import 'package:http/http.dart';
import 'package:skirk_app/features/anime_details/data/models/episode_model/episode_model.dart';

class HianimeScraper {
  final _baseURL = 'https://hianime.to';
  final _malsyncUrl = 'https://api.malsync.moe';
  final Client client;

  HianimeScraper(this.client);

  Future<String> _getHianimeByMalId({required int malId}) async {
    final response = await client.get(
      Uri.parse('$_malsyncUrl/mal/anime/$malId'),
    );
    final decoded =
        jsonDecode(response.body)['Sites']['Zoro'] as Map<String, dynamic>;
    final hianimeId = decoded.keys.first;
    return hianimeId;
  }

  Future<List<EpisodeModel>> getEpisodes({required int malId}) async {
    final hianimeId = await _getHianimeByMalId(malId: malId);

    final [anizip, response] = await Future.wait([
      client.get(Uri.parse('https://api.ani.zip/mappings?mal_id=$malId')),
      client.get(Uri.parse('$_baseURL/ajax/v2/episode/list/$hianimeId')),
    ]);

    final anizipEpisodes = jsonDecode(anizip.body)['episodes'];

    final document = parse(jsonDecode(response.body)['html']);

    final episodeContainer = document.getElementsByClassName('ss-list').first;
    final episodes = episodeContainer.children.map((item) {
      final episodeNumber = item.attributes['data-number'];
      final anizipEpisode = anizipEpisodes[episodeNumber];
      final anizipTitle = anizipEpisode['title'];
      final description = anizipEpisode['overview'] ?? anizipEpisode['summary'];

      return EpisodeModel(
        id: item.attributes['data-id']!,
        number: int.parse(episodeNumber!),
        title:
            anizipTitle['en'] ?? anizipTitle['ja'] ?? item.attributes['title'],
        description: description,
        image: anizipEpisode['image'],
      );
    }).toList();

    return episodes;
  }
}
