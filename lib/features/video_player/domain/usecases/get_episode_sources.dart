import 'package:skirk_app/features/video_player/domain/entities/episode_sources.dart';
import 'package:skirk_app/features/video_player/domain/repositories/episode_sources_repository.dart';

class GetEpisodeSources {
  final EpisodeSourcesRepository _repository;

  GetEpisodeSources(this._repository);

  Future<EpisodeSources> execute({
    required String episodeId,
    String? server,
    String? category,
  }) async {
    return await _repository.getEpisodeSources(
      episodeId: episodeId,
      category: category,
      server: server,
    );
  }
}
