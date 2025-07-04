import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/features/anime_details/data/models/media_details_model/media_details_model.dart';

class MediaDetailsRemoteDatasource {
  final http.Client client;

  MediaDetailsRemoteDatasource(this.client);

  Future<MediaDetailsModel> getMediaDetails(int mediaId) async {
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

    var response = await client.post(
      Uri.parse(anilistAPI),
      headers: headers,
      body: jsonEncode({
        'query': query,
        'variables': {'mediaId': mediaId},
      }),
    );

    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);

      final mediaDetailsModel = MediaDetailsModel.fromJson(
        decoded['data']['Media'],
      );
      return mediaDetailsModel;
    } else {
      throw Exception(
        'Failed to fetch Media Details with status: ${response.statusCode}',
      );
    }
  }
}
