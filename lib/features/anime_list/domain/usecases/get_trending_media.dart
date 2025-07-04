import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class GetTrendingMedia {
  final MediaRepository repository;

  GetTrendingMedia(this.repository);

  Future<List<Media>> execute({required int page, required int perPage}) async {
    final sort = ["TRENDING_DESC"];
    final statusIn = ["RELEASING", "FINISHED", "CANCELLED"];

    return await repository.getMediaList(
      page: page,
      perPage: perPage,
      sort: sort,
      statusIn: statusIn,
    );
  }
}
