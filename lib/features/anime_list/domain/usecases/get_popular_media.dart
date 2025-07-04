import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class GetPopularMedia {
  final MediaRepository repository;

  GetPopularMedia(this.repository);

  Future<List<Media>> execute({required int page, required int perPage}) async {
    final sort = ['POPULARITY_DESC'];
    final statusIn = ["FINISHED", "RELEASING", "CANCELLED"];
    final formatIn = <String>[
      "MOVIE",
      "ONA",
      "OVA",
      "SPECIAL",
      "TV",
      "TV_SHORT",
    ];
    return repository.getMediaList(
      page: page,
      perPage: perPage,
      formatIn: formatIn,
      statusIn: statusIn,
      sort: sort,
    );
  }
}
