import 'package:skirk_app/features/anime_details/data/datasources/media_details_remote_datasource.dart';
import 'package:skirk_app/features/anime_details/data/models/media_details_model/media_details_model.dart';
import 'package:skirk_app/features/anime_details/domain/entities/media_details.dart';
import 'package:skirk_app/features/anime_details/domain/repositories/media_details_repository.dart';

class MediaDetailsRepositoryImpl implements MediaDetailsRepository {
  final MediaDetailsRemoteDatasource datasource;
  final Map<int, MediaDetails> _cache = {};

  MediaDetailsRepositoryImpl(this.datasource);

  @override
  Future<MediaDetails> getMediaDetails(int mediaId) async {
    if (_cache.containsKey(mediaId)) {
      return _cache[mediaId]!;
    }
    final MediaDetailsModel model = await datasource.getMediaDetails(mediaId);

    final mediaDetails = model.toEntity();

    _cache[mediaId] = mediaDetails;

    return mediaDetails;
  }
}
