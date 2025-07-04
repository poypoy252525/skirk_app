import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';

abstract class EpisodeRepository {
  Future<List<Episode>> getEpisodes({required int mediaId});
}
