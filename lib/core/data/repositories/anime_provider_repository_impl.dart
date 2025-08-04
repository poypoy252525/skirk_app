import 'package:http/http.dart';
import 'package:skirk_app/core/data/datasources/animepahe/animepahe.dart';
import 'package:skirk_app/core/data/datasources/anizip/anizip.dart';
import 'package:skirk_app/core/data/model/animepahe/animepahe_episode_model.dart';
import 'package:skirk_app/core/data/model/anizip/anizip_episode_metadata_model.dart';
import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/entities/episode_sources.dart';
import 'package:skirk_app/core/domain/repositories/anime_provider_repository.dart';
import 'package:skirk_app/core/data/datasources/hianime/hianime.dart';

class AnimeRepositoryImpl implements AnimeProviderRepository {
  late Hianime _hianime;
  late Animepahe _animepahe;
  late Anizip _anizip;

  AnimeRepositoryImpl(Client client) {
    _hianime = Hianime(client);
    _animepahe = Animepahe(client);
    _anizip = Anizip(client);
  }

  @override
  Future<List<Episode>> getEpisodes({
    required int malId,
    AnimeProvider provider = AnimeProvider.hianime,
  }) async {
    if (provider == AnimeProvider.hianime) {
      final hianimeEpisodes = await _hianime.getEpisodes(malId: malId);
      final episodes = hianimeEpisodes.map((item) {
        return Episode(
          id: item.id,
          number: item.number,
          createdAt: null,
          description: item.description,
          image: item.image,
          imageHash: null,
          title: item.title,
        );
      }).toList();

      return episodes;
    }

    if (provider == AnimeProvider.animepahe) {
      final [
        anizipEpisodes as List<AnizipEpisodeMetadataModel>,
        animepaheEpisodes as List<AnimepaheEpisodeModel>,
      ] = await Future.wait([
        _anizip.getEpisodeMetadata(malId: malId),
        _animepahe.getEpisodes(malId: malId),
      ]);
      int index = 0;
      return animepaheEpisodes.map((item) {
        final anizipEpisode = anizipEpisodes[index];
        index++;
        return Episode(
          id: item.session!,
          number: item.episode!,
          createdAt: item.createdAt,
          description: anizipEpisode.overview ?? anizipEpisode.summary,
          image: item.snapshot,
          title: anizipEpisode.title?.en,
          duration: item.duration,
        );
      }).toList();
    }

    return [];
  }

  @override
  Future<EpisodeSources> getEpisodeSources({
    required String episodeId,
    AnimeProvider animeProvider = AnimeProvider.hianime,
  }) async {
    if (animeProvider == AnimeProvider.hianime) {
      final sources = await _hianime.getSources(
        episodeId: episodeId,
        provider: HianimeProvider.vidwish,
      );

      return EpisodeSources(
        referer: sources.referer,
        intro: TimeSkip(start: sources.intro?.start, end: sources.intro?.end),
        outro: TimeSkip(start: sources.outro?.start, end: sources.outro?.end),
        server: sources.server,
        sources:
            sources.sources?.map((item) {
              return Source(file: item.file, isM3U8: true);
            }).toList() ??
            [],
        tracks: sources.tracks?.map((item) {
          return Track(
            file: item.file,
            kind: item.kind,
            label: item.label,
            origin: 'megacloud',
            trackDefault: item.trackDefault,
          );
        }).toList(),
      );
    }
    if (animeProvider == AnimeProvider.animepahe) {
      final sources = await _animepahe.getSources(episodeId);
      return EpisodeSources(
        referer: 'https://animepahe.ru/',
        sources: sources.map((source) {
          return Source(file: source.link);
        }).toList(),
      );
    }

    return EpisodeSources(sources: [], referer: '');
  }
}
