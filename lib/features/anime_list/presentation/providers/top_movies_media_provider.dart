import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_list/data/datasources/media_remote_datasource.dart';
import 'package:skirk_app/features/anime_list/data/repositories/media_repository_impl.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/usecases/get_top_movies_media.dart';

part 'top_movies_media_provider.g.dart';

@riverpod
Future<List<Media>> topMoviesMedia(Ref ref, int page, int perPage) async {
  final mediaList = GetTopMoviesMedia(
    MediaRepositoryImpl(MediaRemoteDatasource(http.Client())),
  );
  return mediaList.execute(page: page, perPage: perPage);
}
