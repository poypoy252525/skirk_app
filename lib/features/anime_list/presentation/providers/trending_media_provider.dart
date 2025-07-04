import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_list/data/datasources/media_remote_datasource.dart';
import 'package:skirk_app/features/anime_list/data/repositories/media_repository_impl.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';
import 'package:http/http.dart' as http;
import 'package:skirk_app/features/anime_list/domain/usecases/get_trending_media.dart';

part 'trending_media_provider.g.dart';

@riverpod
MediaRepository mediaRepository(Ref ref) {
  return MediaRepositoryImpl(MediaRemoteDatasource(http.Client()));
}

@riverpod
GetTrendingMedia getTrendingMedia(Ref ref) {
  final repo = ref.watch(mediaRepositoryProvider);
  return GetTrendingMedia(repo);
}

@riverpod
Future<List<Media>> trendingMedia(
  Ref ref, {
  required int page,
  required int perPage,
}) {
  final usecase = ref.watch(getTrendingMediaProvider);

  return usecase.execute(page: page, perPage: perPage);
}

@riverpod
class MediaList extends _$MediaList {
  int _page = 1;
  final int _perPage = 24;
  bool _isLoading = false;
  bool _hasNext = true;

  @override
  Future<List<Media>> build() {
    var mediaList = ref.read(
      trendingMediaProvider(page: _page, perPage: _perPage).future,
    );
    return mediaList;
  }

  /// Load next page if not already loading
  Future<void> nextPage() async {
    if (_isLoading || !_hasNext) return;

    _isLoading = true;
    _page++;
    try {
      final nextPageList = await ref.read(
        trendingMediaProvider(page: _page, perPage: _perPage).future,
      );
      if (nextPageList.isNotEmpty) {
        state = AsyncData([...(state.value ?? []), ...nextPageList]);
      } else {
        _hasNext = false;
      }
    } catch (e) {
      throw Exception('There is an error $e');
    } finally {
      _isLoading = false;
    }
  }

  /// Refresh everything
  Future<void> refresh() async {
    _page = 1;
    _hasNext = true;
    state = AsyncData([]);
    await nextPage();
  }
}
