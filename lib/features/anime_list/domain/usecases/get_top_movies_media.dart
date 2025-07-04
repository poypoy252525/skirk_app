import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class GetTopMoviesMedia {
  final MediaRepository repository;

  GetTopMoviesMedia(this.repository);

  Future<List<Media>> execute({required int page, required int perPage}) {
    final sort = ['POPULARITY_DESC', 'SCORE_DESC'];
    final statusIn = ["FINISHED", "RELEASING", "CANCELLED"];
    final formatIn = <String>["MOVIE"];
    return repository.getMediaList(
      page: page,
      perPage: perPage,
      sort: sort,
      statusIn: statusIn,
      formatIn: formatIn,
    );
  }
}
