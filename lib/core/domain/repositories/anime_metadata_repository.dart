import 'package:skirk_app/core/domain/entities/media.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';

abstract class AnimeMetadataRepository {
  Future<List<Media>> getTrendingTVShows({int page = 1, int perPage = 10});
  Future<List<Media>> getAllTimePopular({int page = 1, int perPage = 10});
  Future<List<Media>> getPopularThisSeason({int page = 1, int perPage = 10});
  Future<List<Media>> getTopRatedTVShows({int page = 1, int perPage = 10});
  Future<List<Media>> getPopularMovies({int page = 1, int perPage = 10});
  Future<List<Media>> getLatestTVShows({int page = 1, int perPage = 10});
  Future<List<Media>> search({
    int page = 1,
    int perPage = 10,
    required String query,
  });
  Future<MediaDetails> getMediaDetails({required int mediaId});
}
