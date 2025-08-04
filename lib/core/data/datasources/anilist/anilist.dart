import 'dart:convert';

import 'package:http/http.dart';
import 'package:skirk_app/core/data/model/anilist/media_model.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';

class Anilist {
  final String _baseUrl = 'https://graphql.anilist.co';
  final Client _client;
  final Map<String, String> _anilistHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  Anilist(this._client);

  Future<List<MediaModel>> advanceSearch({
    required int page,
    required int perPage,
    List<String>? sort,
    List<String>? statusIn,
    List<String>? formatIn,
    String? season,
    int? seasonYear,
    String? search,
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
    final queryStr = search != null ? ', search: "$search"' : '';
    final String query =
        '''
      query Page(\$page: Int, \$perPage: Int) {
        Page(page: \$page, perPage: \$perPage) {
          media(type: ANIME, isAdult: false $sortStr $formatInStr $statusInStr $seasonStr $seasonYearStr $queryStr) {
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
          idMal
          episodes
          format
          seasonYear
          genres
          }
        }
      }
    ''';

    var response = await _client.post(
      Uri.parse(_baseUrl),
      headers: _anilistHeaders,
      body: jsonEncode({
        'query': query,
        'variables': {"page": page, "perPage": perPage},
      }),
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);
      final List mediaList = decoded['data']['Page']['media'];
      try {
        final models = mediaList.map((el) => MediaModel.fromJson(el)).toList();

        return models.where((item) => item.idMal != null).toList();
      } catch (e) {
        throw Exception(
          'Failed to fetch trending madia: ${response.statusCode}',
        );
      }
    } else {
      throw Exception('Failed to fetch trending madia: ${response.statusCode}');
    }
  }

  Future<List<MediaModel>> getTrendingTVShows({
    int page = 1,
    int perPage = 10,
  }) async {
    return advanceSearch(
      page: page,
      perPage: perPage,
      formatIn: ['TV'],
      sort: ['TRENDING_DESC', 'SCORE_DESC'],
    );
  }

  Future<List<MediaModel>> getAllTimePopular({
    int page = 1,
    int perPage = 10,
  }) async {
    return advanceSearch(
      page: page,
      perPage: perPage,
      sort: ['POPULARITY_DESC', 'SCORE_DESC'],
    );
  }

  Future<List<MediaModel>> getPopularThisSeason({
    int page = 1,
    int perPage = 10,
  }) async {
    return advanceSearch(
      page: page,
      perPage: perPage,
      season: getCurrentSeason(),
      seasonYear: DateTime.now().year,
      sort: ['POPULARITY_DESC'],
    );
  }

  Future<List<MediaModel>> getTopRatedTVShows({
    int page = 1,
    int perPage = 10,
  }) {
    return advanceSearch(
      page: page,
      perPage: perPage,
      sort: ['SCORE_DESC', 'POPULARITY_DESC'],
      formatIn: ['TV'],
    );
  }

  Future<List<MediaModel>> getPopularMovies({int page = 1, int perPage = 10}) {
    return advanceSearch(
      page: page,
      perPage: perPage,
      formatIn: ['MOVIE'],
      sort: ['POPULARITY_DESC'],
    );
  }

  Future<List<MediaModel>> getLatestTVShows({int page = 1, int perPage = 10}) {
    return advanceSearch(
      page: page,
      perPage: perPage,
      season: getCurrentSeason(),
      seasonYear: DateTime.now().year,
      formatIn: ['TV'],
      sort: ['START_DATE_DESC'],
      statusIn: ['RELEASING', 'FINISHED', 'CANCELLED'],
    );
  }

  Future<MediaDetails> getMediaDetails(int mediaId) async {
    final String query = '''
    query Media(\$mediaId: Int) {
      Media(id: \$mediaId) {
        id
        idMal
        title {
          romaji
          english
          native
          userPreferred
        }
        type
        format
        status
        description
        startDate {
          year
          month
          day
        }
        endDate {
          year
          month
          day
        }
        season
        seasonYear
        episodes
        duration
        chapters
        volumes
        countryOfOrigin
        isLicensed
        source
        hashtag
        trailer {
          id
          site
          thumbnail
        }
        updatedAt
        coverImage {
          extraLarge
          large
          medium
          color
        }
        bannerImage
        genres
        synonyms
        averageScore
        meanScore
        popularity
        isLocked
        trending
        favourites
        tags {
          id
          name
        }
        relations {
          edges {
            relationType
            node {
              id
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
            }
          }
        }
        characters {
          nodes {
            id
            name {
              first
              middle
              last
              full
              native
              alternative
              alternativeSpoiler
              userPreferred
            }
            image {
              large
              medium
            }
            description
            gender
            dateOfBirth {
              year
              month
              day
            }
            age
          }
        }
        staff {
          nodes {
            id
            name {
              first
              middle
              last
              full
              native
              alternative
              userPreferred
            }
            image {
              large
              medium
            }
            description
            gender
            dateOfBirth {
              year
              month
              day
            }
            age
          }
        }
        studios {
          nodes {
            id
            name
            isAnimationStudio
          }
        }
        isFavourite
        isFavouriteBlocked
        isAdult
        nextAiringEpisode {
          id
          airingAt
          timeUntilAiring
          episode
          mediaId
        }
        airingSchedule {
          nodes {
            id
            airingAt
            timeUntilAiring
            episode
            mediaId
          }
        }
        streamingEpisodes {
          thumbnail
          title
          url
        }
      }
    }
    ''';

    var response = await _client.post(
      Uri.parse(_baseUrl),
      headers: _anilistHeaders,
      body: jsonEncode({
        'query': query,
        'variables': {'mediaId': mediaId},
      }),
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);

      final mediaDetailsModel = MediaDetails.fromJson(decoded['data']['Media']);
      return mediaDetailsModel;
    } else {
      throw Exception(
        'Failed to fetch Media Details with status: ${response.statusCode}',
      );
    }
  }
}

String getCurrentSeason() {
  String season;
  DateTime now = DateTime.now();

  if (now.month >= 1 && now.month <= 3) {
    season = "WINTER";
  } else if (now.month >= 4 && now.month <= 6) {
    season = 'SPRING';
  } else if (now.month >= 7 && now.month <= 9) {
    season = 'SUMMER';
  } else {
    season = "FALL";
  }

  return season;
}
