import 'package:skirk_app/features/video_player/data/datasources/episode_sources_remote_datasource.dart';
import 'package:skirk_app/features/video_player/data/models/episode_sources_model.dart';
import 'package:skirk_app/features/video_player/domain/entities/episode_sources.dart';
import 'package:skirk_app/features/video_player/domain/repositories/episode_sources_repository.dart';

class EpisodeSourcesRepositoryImpl implements EpisodeSourcesRepository {
  final EpisodeSourcesRemoteDatasource _datasource;

  EpisodeSourcesRepositoryImpl(this._datasource);

  @override
  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    String? server,
    String? category,
  }) async {
    final model = await _datasource.getEpisodes(
      episodeId: episodeId,
      category: category,
      server: server,
    );
    final entity = model.toEntity();
    return entity;
  }
}
