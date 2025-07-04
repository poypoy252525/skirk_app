import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class GetTopRatedMedia {
  final MediaRepository repository;

  GetTopRatedMedia(this.repository);

  Future<List<Media>> execute({required int page, required int perPage}) async {
    final mediaList = await repository.getMediaList(
      page: page,
      perPage: perPage,
      sort: ["SCORE_DESC", "POPULARITY_DESC"],
      formatIn: ["TV"],
    );
    return mediaList;
  }
}
