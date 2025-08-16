import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart';
import 'package:skirk_app/core/presentation/providers/settings_provider/settings_provider.dart';

abstract class AnimeProviderRepository {
  Future<List<Episode>> getEpisodes({
    required int idMal,
    AnimeProvider provider = AnimeProvider.hianime,
  });

  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    AnimeProvider animeProvider = AnimeProvider.hianime,
  });
}
