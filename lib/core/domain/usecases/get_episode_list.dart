import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/repositories/episode_repository.dart';

class GetEpisodeList {
  final EpisodeRepository repository;
  GetEpisodeList(this.repository);

  Future<List<Episode>> execute({int page = 1, required String animeId}) {
    return repository.getEpisodeList(animeId: animeId);
  }
}
