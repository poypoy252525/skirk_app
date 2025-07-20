import 'package:skirk_app/core/data/datasources/hianime_episode_source_remote_datasource/hianime_episode_source_remote_datasource.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart';
import 'package:skirk_app/core/domain/repositories/episode_sources_repository.dart';

class EpisodeSourcesRepositoryImpl implements EpisodeSourcesRepository {
  final HianimeEpisodeSourceRemoteDatasource remoteDatasource;

  EpisodeSourcesRepositoryImpl(this.remoteDatasource);

  @override
  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    String? type,
  }) async {
    final model = await remoteDatasource.getMegaplaySources(
      episodeId: episodeId,
      type: type,
    );

    return EpisodeSources(
      intro: TimeSkip(start: model.intro?.start, end: model.intro?.end),
      outro: TimeSkip(start: model.outro?.start, end: model.outro?.end),
      server: model.server,
      sources: Sources(
        file: model.sources?.file,
        isM3U8: model.sources?.isM3U8,
      ),
      tracks: model.tracks
          ?.map(
            (track) => Track(
              file: track.file,
              kind: track.kind,
              label: track.label,
              trackDefault: track.trackDefault,
            ),
          )
          .toList(),
    );
  }
}
