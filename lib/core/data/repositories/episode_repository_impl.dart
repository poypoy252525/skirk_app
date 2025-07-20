import 'package:skirk_app/core/data/datasources/animepahe_datasource/animepahe_remote_datasource.dart';
import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/repositories/episode_repository.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final AnimepaheRemoteDatasource datasource;

  EpisodeRepositoryImpl(this.datasource);

  @override
  Future<List<Episode>> getEpisodeList({
    int page = 1,
    required String animeId,
  }) async {
    final episodeModel = await datasource.getAnimepaheEpisodes(
      session: animeId,
      page: page,
    );
    final data = episodeModel.data;
    return data
        .map(
          (item) => Episode(
            id: item.id,
            animeId: item.animeId,
            episode: item.episode,
            episode2: item.episode2,
            edition: item.edition,
            title: item.title,
            snapshot: item.snapshot,
            disc: item.disc,
            audio: item.audio,
            duration: item.duration,
            session: item.session,
            filler: item.filler,
            description: '',
            createdAt: item.createdAt,
          ),
        )
        .toList();
  }
}
