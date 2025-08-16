import 'package:http/http.dart';
import 'package:skirk_app/core/data/datasources/anilist/anilist.dart';
import 'package:skirk_app/core/domain/entities/media.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';
import 'package:skirk_app/core/domain/repositories/anime_metadata_repository.dart';
import 'package:skirk_app/mappers/media_mapper.dart';

class AnimeMetadataRepositoryImpl implements AnimeMetadataRepository {
  late final Client _client;
  late Anilist _anilist;

  AnimeMetadataRepositoryImpl(this._client) {
    _anilist = Anilist(_client);
  }

  @override
  Future<List<Media>> getAllTimePopular({
    int page = 1,
    int perPage = 10,
  }) async {
    final models = await _anilist.getAllTimePopular(
      page: page,
      perPage: perPage,
    );

    final mediaList = models.map((model) => model.toEntity()).toList();

    return mediaList;
  }

  @override
  Future<List<Media>> getPopularMovies({int page = 1, int perPage = 10}) async {
    final models = await _anilist.getPopularMovies(
      page: page,
      perPage: perPage,
    );

    final mediaList = models.map((model) => model.toEntity()).toList();

    return mediaList;
  }

  @override
  Future<List<Media>> getPopularThisSeason({
    int page = 1,
    int perPage = 10,
  }) async {
    final models = await _anilist.getPopularThisSeason(
      page: page,
      perPage: perPage,
    );

    final mediaList = models.map((model) => model.toEntity()).toList();

    return mediaList;
  }

  @override
  Future<List<Media>> getTopRatedTVShows({
    int page = 1,
    int perPage = 10,
  }) async {
    final models = await _anilist.getTopRatedTVShows(
      page: page,
      perPage: perPage,
    );

    final mediaList = models.map((model) => model.toEntity()).toList();

    return mediaList;
  }

  @override
  Future<List<Media>> getTrendingTVShows({
    int page = 1,
    int perPage = 10,
  }) async {
    final models = await _anilist.getTrendingTVShows(
      page: page,
      perPage: perPage,
    );

    final mediaList = models.map((model) => model.toEntity()).toList();

    return mediaList;
  }

  @override
  Future<List<Media>> getLatestTVShows({int page = 1, int perPage = 10}) async {
    final models = await _anilist.getLatestTVShows(
      page: page,
      perPage: perPage,
    );

    final mediaList = models.map((model) => model.toEntity()).toList();

    return mediaList;
  }

  @override
  Future<MediaDetails> getMediaDetails({required int mediaId}) {
    return _anilist.getMediaDetails(mediaId);
  }

  @override
  Future<List<Media>> search({
    int page = 1,
    int perPage = 10,
    required String query,
  }) async {
    final models = await _anilist.advanceSearch(
      page: page,
      perPage: perPage,
      search: query,
      // statusIn: ['RELEASING', 'FINISHED'],
      sort: ['POPULARITY_DESC'],
    );

    return models.map((model) => model.toEntity()).toList();
  }
}
