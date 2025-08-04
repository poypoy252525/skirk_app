import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/core/data/repositories/anime_provider_repository_impl.dart';
import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/repositories/anime_provider_repository.dart';
import 'package:skirk_app/core/domain/usecases/get_episode_list.dart';

part 'episode_list_provider.g.dart';

final AnimeProviderRepository _animeRepository = AnimeRepositoryImpl(Client());

@riverpod
Future<List<Episode>> episodeList(
  Ref ref, {
  required int malId,
  AnimeProvider animeProvider = AnimeProvider.hianime,
}) {
  final usecase = GetEpisodeList(_animeRepository);
  return usecase.execute(malId: malId, provider: animeProvider);
}
