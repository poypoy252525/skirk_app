import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/core/data/repositories/anime_metadata_repository_impl.dart';
import 'package:skirk_app/core/domain/entities/media.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';

part 'anime_list_provider.g.dart';

final _client = Client();
final _repo = AnimeMetadataRepositoryImpl(_client);

@riverpod
Future<List<Media>> trendingTVShows(Ref ref, {int page = 1, int perPage = 10}) {
  return _repo.getTrendingTVShows(page: page, perPage: perPage);
}

@riverpod
Future<List<Media>> allTimePopular(Ref ref, {int page = 1, int perPage = 10}) {
  return _repo.getAllTimePopular(page: page, perPage: perPage);
}

@riverpod
Future<List<Media>> popularMovies(Ref ref, {int page = 1, int perPage = 10}) {
  return _repo.getPopularMovies(page: page, perPage: perPage);
}

@riverpod
Future<List<Media>> popularThisSeason(
  Ref ref, {
  int page = 1,
  int perPage = 10,
}) {
  return _repo.getPopularThisSeason(page: page, perPage: perPage);
}

@riverpod
Future<List<Media>> topRatedTVShows(Ref ref, {int page = 1, int perPage = 10}) {
  return _repo.getTopRatedTVShows(page: page, perPage: perPage);
}

@riverpod
Future<List<Media>> latestTVShows(Ref ref, {int page = 1, int perPage = 10}) {
  return _repo.getLatestTVShows(page: page, perPage: perPage);
}

@riverpod
Future<MediaDetails> mediaDetails(Ref ref, {required int mediaId}) {
  return _repo.getMediaDetails(mediaId: mediaId);
}

@riverpod
Future<List<Media>> search(
  Ref ref, {
  required String query,
  int page = 1,
  int perPage = 12,
}) {
  return _repo.search(query: query, page: page, perPage: perPage);
}
