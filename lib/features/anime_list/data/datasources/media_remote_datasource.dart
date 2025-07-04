import 'dart:convert';

import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/features/anime_list/data/model/media_model.dart';
import 'package:http/http.dart' as http;

class MediaRemoteDatasource {
  final http.Client client;

  MediaRemoteDatasource(this.client);

  Future<List<MediaModel>> getMediaList({
    required int page,
    required int perPage,
    List<String>? sort,
    List<String>? statusIn,
    List<String>? formatIn,
    String? season,
    int? seasonYear,
  }) async {
    final seasonStr = season != null ? ", season: $season" : "";
    final seasonYearStr = seasonYear != null ? ", seasonYear: $seasonYear" : '';
    final statusInStr = statusIn != null && statusIn.isNotEmpty
        ? ', status_in: $statusIn'
        : '';
    final formatInStr = formatIn != null && formatIn.isNotEmpty
        ? ', format_in: $formatIn'
        : '';
    final sortStr = sort != null && sort.isNotEmpty ? ', sort: $sort' : '';

    final String query =
        '''
      query Page(\$page: Int, \$perPage: Int) {
        Page(page: \$page, perPage: \$perPage) {
          media(type: ANIME $sortStr $formatInStr $statusInStr $seasonStr $seasonYearStr) {
            title {
            romaji
            english
            native
            userPreferred
          }
          coverImage {
            extraLarge
            large
            medium
            color
          }
          id
          episodes
          format
          seasonYear
          genres
          }
        }
      }
    ''';

    var response = await client.post(
      Uri.parse(anilistAPI),
      headers: headers,
      body: jsonEncode({
        'query': query,
        'variables': {"page": page, "perPage": perPage},
      }),
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      final List mediaList = decoded['data']['Page']['media'];
      try {
        return mediaList.map((el) => MediaModel.fromJson(el)).toList();
      } catch (e) {
        throw Exception(
          'Failed to fetch trending madia: ${response.statusCode}',
        );
      }
    } else {
      throw Exception('Failed to fetch trending madia: ${response.statusCode}');
    }
  }

  // Future<List<MediaModel>> getTrendingMedia({
  //   required int page,
  //   required int perPage,
  // }) async {
  //   final sort = ["TRENDING_DESC"];
  //   final statusIn = ["RELEASING", "FINISHED", "CANCELLED"];
  //   final formatIn = <String>[
  //     "MOVIE",
  //     "ONA",
  //     "OVA",
  //     "SPECIAL",
  //     "TV",
  //     "TV_SHORT",
  //   ];
  //   return getMediaList(
  //     page: page,
  //     perPage: perPage,
  //     formatIn: formatIn,
  //     sort: sort,
  //     statusIn: statusIn,
  //   );
  // }

  // Future<List<MediaModel>> getPopularMedia({
  //   required int page,
  //   required int perPage,
  // }) async {
  //   final sort = ['POPULARITY_DESC'];
  //   final statusIn = ["FINISHED", "RELEASING", "CANCELLED"];
  //   final formatIn = <String>[
  //     "MOVIE",
  //     "ONA",
  //     "OVA",
  //     "SPECIAL",
  //     "TV",
  //     "TV_SHORT",
  //   ];
  //   return getMediaList(
  //     page: page,
  //     perPage: perPage,
  //     sort: sort,
  //     statusIn: statusIn,
  //     formatIn: formatIn,
  //   );
  // }

  // Future<List<MediaModel>> getTopMoviesMedia({
  //   required int page,
  //   required int perPage,
  // }) async {
  //   final sort = ['POPULARITY_DESC', 'SCORE_DESC'];
  //   final statusIn = ["FINISHED", "RELEASING", "CANCELLED"];
  //   final formatIn = <String>["MOVIE"];
  //   return getMediaList(
  //     page: page,
  //     perPage: perPage,
  //     sort: sort,
  //     statusIn: statusIn,
  //     formatIn: formatIn,
  //   );
  // }

  // Future<List<MediaModel>> getPopularBySeason({
  //   required int page,
  //   required int perPage,
  //   required String season,
  //   int? seasonYear,
  // }) async {
  //   return getMediaList(
  //     page: page,
  //     perPage: perPage,
  //     sort: ['POPULARITY_DESC'],
  //     // formatIn: ["TV"],
  //     season: season,
  //     seasonYear: seasonYear,
  //   );
  // }
}
