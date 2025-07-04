import 'dart:convert';

import 'package:skirk_app/features/anime_list/data/datasources/media_remote_datasource.dart';
import 'package:skirk_app/features/anime_list/data/model/media_model.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class MediaRepositoryImpl implements MediaRepository {
  final MediaRemoteDatasource remoteDatasource;

  MediaRepositoryImpl(this.remoteDatasource);

  final _cache = <String, List<Media>>{};

  // @override
  // Future<List<Media>> getTrendingMedia({
  //   required int page,
  //   required int perPage,
  // }) async {
  //   final List<MediaModel> mediaModel = await remoteDatasource.getTrendingMedia(
  //     page: page,
  //     perPage: perPage,
  //   );
  //   return mediaModel.map((el) => el.toEntity()).toList();
  // }

  // @override
  // Future<List<Media>> getPopularMedia({
  //   required int page,
  //   required int perPage,
  // }) async {
  //   final List<MediaModel> mediaModel = await remoteDatasource.getPopularMedia(
  //     page: page,
  //     perPage: perPage,
  //   );
  //   return mediaModel.map((el) => el.toEntity()).toList();
  // }

  // @override
  // Future<List<Media>> getTopMoviesMedia({
  //   required int page,
  //   required int perPage,
  // }) async {
  //   final List<MediaModel> mediaModel = await remoteDatasource
  //       .getTopMoviesMedia(page: page, perPage: perPage);
  //   return mediaModel.map((el) => el.toEntity()).toList();
  // }

  @override
  Future<List<Media>> getMediaList({
    required int page,
    required int perPage,
    String? season,
    int? seasonYear,
    List<String>? sort,
    List<String>? statusIn,
    List<String>? formatIn,
  }) async {
    final key = jsonEncode({
      'page': page,
      'perPage': perPage,
      'season': season,
      'seasonYear': seasonYear,
      'sort': sort,
      'statusIn': statusIn,
      'formatIn': formatIn,
    });

    if (_cache.containsKey(key)) {
      return _cache[key]!;
    }

    final mediaModel = await remoteDatasource.getMediaList(
      page: page,
      perPage: perPage,
      formatIn: formatIn,
      season: season,
      seasonYear: seasonYear,
      sort: sort,
      statusIn: statusIn,
    );

    final mediaListEntities = mediaModel.map((el) => el.toEntity()).toList();
    _cache[key] = mediaListEntities;

    return mediaListEntities;
  }
}

//  String season;
//     DateTime now = DateTime.now();

//     if (now.month >= 1 && now.month <= 3) {
//       season = "WINTER";
//     } else if (now.month >= 4 && now.month <= 6) {
//       season = 'SPRING';
//     } else if (now.month >= 7 && now.month <= 9) {
//       season = 'SUMMER';
//     } else {
//       season = "FALL";
//     }
