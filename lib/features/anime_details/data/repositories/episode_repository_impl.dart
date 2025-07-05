import 'package:skirk_app/features/anime_details/data/datasources/episode_remote_datasource.dart';
import 'package:skirk_app/features/anime_details/data/models/episode_model/episode_model.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';
import 'package:skirk_app/features/anime_details/domain/repositories/episode_repository.dart';

class EpisodeRepositoryImpl implements EpisodeRepository {
  final EpisodeRemoteDatasource _episodeRemoteDatasource;

  EpisodeRepositoryImpl(this._episodeRemoteDatasource);

  final _episodeCache = <int, List<Episode>>{};

  @override
  Future<List<Episode>> getEpisodes({required int mediaId}) async {
    if (_episodeCache.containsKey(mediaId)) {
      return _episodeCache[mediaId]!;
    }

    final episodeModels = await _episodeRemoteDatasource.getEpisodes(mediaId);

    final episodes = episodeModels.map((i) => i.toEntity()).toList();

    _episodeCache[mediaId] = episodes;

    return episodes;
  }
}
