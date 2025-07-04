import 'package:skirk_app/core/functions.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class GetLatestMedia {
  final MediaRepository mediaRepository;
  GetLatestMedia(this.mediaRepository);

  Future<List<Media>> execute({required int page, required int perPage}) async {
    final mediaList = await mediaRepository.getMediaList(
      page: page,
      perPage: perPage,
      formatIn: ["TV"],
      sort: ["START_DATE_DESC", "POPULARITY_DESC"],
      statusIn: ["RELEASING"],
      season: getCurrentSeason(),
      seasonYear: DateTime.now().year,
    );

    return mediaList;
  }
}
