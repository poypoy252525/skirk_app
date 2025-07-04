import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:skirk_app/features/anime_list/data/datasources/media_remote_datasource.dart';
import 'package:skirk_app/features/anime_list/data/repositories/media_repository_impl.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/usecases/get_popular_media.dart';

part 'popular_media_provider.g.dart';

@riverpod
Future<List<Media>> popularMedia(
  Ref ref, {
  required int page,
  required int perPage,
}) {
  final getPopularMedia = GetPopularMedia(
    MediaRepositoryImpl(MediaRemoteDatasource(http.Client())),
  );

  return getPopularMedia.execute(page: page, perPage: perPage);
}
