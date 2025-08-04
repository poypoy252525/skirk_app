import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart';

enum AnimeProvider { animepahe, hianime }

abstract class AnimeProviderRepository {
  Future<List<Episode>> getEpisodes({
    required int malId,
    AnimeProvider provider = AnimeProvider.hianime,
  });

  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    AnimeProvider animeProvider = AnimeProvider.hianime,
  });
}
