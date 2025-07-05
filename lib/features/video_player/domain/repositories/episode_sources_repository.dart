import 'package:skirk_app/features/video_player/domain/entities/episode_sources.dart';

abstract class EpisodeSourcesRepository {
  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    String? server,
    String? category,
  });
}
