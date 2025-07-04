import 'package:skirk_app/core/functions.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/domain/repositories/media_repository.dart';

class GetPopularMediaThisSeason {
  final MediaRepository repository;

  GetPopularMediaThisSeason(this.repository);

  Future<List<Media>> execute({required int page, required int perPage}) {
    return repository.getMediaList(
      page: page,
      perPage: perPage,
      season: getCurrentSeason(),
      seasonYear: DateTime.now().year,
      sort: ['POPULARITY_DESC'],
      statusIn: ['RELEASING', 'FINISHED'],
    );
  }
}
