import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_list/data/datasources/media_remote_datasource.dart';
import 'package:skirk_app/features/anime_list/data/repositories/media_repository_impl.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/usecases/get_latest_media.dart';

part 'latest_media_provider.g.dart';

final latestMediaRepository = MediaRepositoryImpl(
  MediaRemoteDatasource(http.Client()),
);

@riverpod
Future<List<Media>> latestMedia(
  Ref ref, {
  required int page,
  required int perPage,
}) async {
  final usecase = GetLatestMedia(latestMediaRepository);
  return usecase.execute(page: page, perPage: perPage);
}
