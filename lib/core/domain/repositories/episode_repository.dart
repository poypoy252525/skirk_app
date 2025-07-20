import 'package:skirk_app/core/domain/entities/episode.dart';

abstract class EpisodeRepository {
  Future<List<Episode>> getEpisodeList({int page = 1, required String animeId});
}
