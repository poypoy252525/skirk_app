import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';
import 'package:skirk_app/features/anime_details/domain/repositories/episode_repository.dart';

class GetEpisodeList {
  final EpisodeRepository _episodeRepository;
  GetEpisodeList(this._episodeRepository);

  Future<List<Episode>> execute({required int mediaId}) async {
    return await _episodeRepository.getEpisodes(mediaId: mediaId);
  }
}
