import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/core/data/repositories/anime_provider_repository_impl.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart' as Entity;
import 'package:skirk_app/core/domain/repositories/anime_provider_repository.dart';
import 'package:skirk_app/core/presentation/providers/settings_provider/settings_provider.dart';

part 'episode_sources_provider.g.dart';

AnimeProviderRepository _repository = AnimeRepositoryImpl(Client());

@Riverpod(keepAlive: true)
class EpisodeSources extends _$EpisodeSources {
  @override
  Entity.EpisodeSources? build() {
    return null;
  }

  void set({
    required String episodeId,
    AnimeProvider animeProvider = AnimeProvider.hianime,
  }) async {
    state = await _repository.getEpisodeSources(
      episodeId: episodeId,
      animeProvider: animeProvider,
    );
  }

  void remove() {
    state = null;
  }
}
