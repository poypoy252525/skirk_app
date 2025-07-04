import 'package:skirk_app/features/anime_details/data/repositories/media_details_repository_impl.dart';
import 'package:skirk_app/features/anime_details/domain/entities/media_details.dart';

class GetMediaDetails {
  final MediaDetailsRepositoryImpl repositoryImpl;

  GetMediaDetails(this.repositoryImpl);

  Future<MediaDetails> execute(int mediaId) async {
    return repositoryImpl.getMediaDetails(mediaId);
  }
}
