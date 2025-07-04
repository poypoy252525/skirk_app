import 'package:skirk_app/features/anime_details/domain/entities/media_details.dart';

abstract class MediaDetailsRepository {
  Future<MediaDetails> getMediaDetails(int mediaId);
}
