import 'package:skirk_app/core/domain/entities/episode_sources.dart';

abstract class EpisodeSourcesRepository {
  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    String? type,
  });
}
