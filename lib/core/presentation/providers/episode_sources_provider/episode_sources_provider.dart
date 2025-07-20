import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/core/data/datasources/hianime_episode_source_remote_datasource/hianime_episode_source_remote_datasource.dart';
import 'package:skirk_app/core/data/repositories/episode_sources_repository_impl.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart';
import 'package:skirk_app/core/domain/usecases/get_episode_sources.dart';

part 'episode_sources_provider.g.dart';

@riverpod
Future<EpisodeSources> episodeSources(
  Ref ref, {
  required String episodeId,
  String? type,
}) async {
  final usecase = GetEpisodeSources(
    EpisodeSourcesRepositoryImpl(
      HianimeEpisodeSourceRemoteDatasource(Client()),
    ),
  );
  return usecase.execute(episodeId: episodeId, type: type);
}

@Riverpod(keepAlive: true)
class HianimeEpisodeSources extends _$HianimeEpisodeSources {
  @override
  EpisodeSources? build() {
    return null;
  }

  void set({required String episodeId, String? type}) async {
    final usecase = GetEpisodeSources(
      EpisodeSourcesRepositoryImpl(
        HianimeEpisodeSourceRemoteDatasource(Client()),
      ),
    );

    state = await usecase.execute(episodeId: episodeId, type: type);
  }

  void remove() {
    state = null;
  }
}
