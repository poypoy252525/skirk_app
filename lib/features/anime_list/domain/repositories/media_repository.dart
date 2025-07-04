import 'package:skirk_app/features/anime_list/domain/entities/media.dart';

abstract class MediaRepository {
  // Future<List<Media>> getTrendingMedia({
  //   required int page,
  //   required int perPage,
  // });
  // Future<List<Media>> getPopularMedia({
  //   required int page,
  //   required int perPage,
  // });
  // Future<List<Media>> getTopMoviesMedia({
  //   required int page,
  //   required int perPage,
  // });
  // Future<List<Media>> getPopularMediaBySeason({
  //   required int page,
  //   required int perPage,
  //   required String season,
  //   int? seasonYear,
  // });

  Future<List<Media>> getMediaList({
    required int page,
    required int perPage,
    String? season,
    int? seasonYear,
    List<String>? sort,
    List<String>? statusIn,
    List<String>? formatIn,
  });
}
