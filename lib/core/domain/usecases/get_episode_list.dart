import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/repositories/anime_provider_repository.dart';

class GetEpisodeList {
  final AnimeProviderRepository repository;
  GetEpisodeList(this.repository);

  Future<List<Episode>> execute({
    int page = 1,
    required int malId,
    required AnimeProvider provider,
  }) {
    return repository.getEpisodes(malId: malId, provider: provider);
  }
}
