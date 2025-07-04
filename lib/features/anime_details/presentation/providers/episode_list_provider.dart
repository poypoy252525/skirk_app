import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_details/data/datasources/episode_remote_datasource.dart';
import 'package:skirk_app/features/anime_details/data/repositories/episode_repository_impl.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';
import 'package:skirk_app/features/anime_details/domain/usecases/get_episode_list.dart';

part 'episode_list_provider.g.dart';

final episodeRepository = EpisodeRepositoryImpl(
  EpisodeRemoteDatasource(http.Client()),
);

@riverpod
Future<List<Episode>> episodeList(Ref ref, {required int mediaId}) {
  final episodeList = GetEpisodeList(episodeRepository);

  return episodeList.execute(mediaId: mediaId);
}
