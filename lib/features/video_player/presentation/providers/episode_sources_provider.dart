import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/video_player/data/datasources/episode_sources_remote_datasource.dart';
import 'package:skirk_app/features/video_player/data/repositories/episode_sources_repository_impl.dart';
import 'package:skirk_app/features/video_player/domain/entities/episode_sources.dart';
import 'package:skirk_app/features/video_player/domain/usecases/get_episode_sources.dart';

part 'episode_sources_provider.g.dart';

final EpisodeSourcesRepositoryImpl _repositoryImpl =
    EpisodeSourcesRepositoryImpl(EpisodeSourcesRemoteDatasource(Client()));

@riverpod
Future<EpisodeSources> episodeSources(
  Ref ref, {
  required String episodeId,
  String? category,
  String? server,
}) {
  final usecase = GetEpisodeSources(_repositoryImpl);
  return usecase.execute(
    episodeId: episodeId,
    category: category,
    server: server,
  );
}
