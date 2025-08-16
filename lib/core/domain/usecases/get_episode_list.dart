import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/repositories/anime_provider_repository.dart';
import 'package:skirk_app/core/presentation/providers/settings_provider/settings_provider.dart';

class GetEpisodeList {
  final AnimeProviderRepository repository;
  GetEpisodeList(this.repository);

  Future<List<Episode>> execute({
    int page = 1,
    required int malId,
    required AnimeProvider provider,
  }) {
    return repository.getEpisodes(idMal: malId, provider: provider);
  }
}
