import 'package:skirk_app/core/domain/entities/episode_sources.dart';
import 'package:skirk_app/core/domain/repositories/episode_sources_repository.dart';

class GetEpisodeSources {
  final EpisodeSourcesRepository repository;

  GetEpisodeSources(this.repository);

  Future<EpisodeSources> execute({
    required String episodeId,
    String? type,
  }) async {
    return repository.getEpisodeSources(episodeId: episodeId, type: type);
  }
}
