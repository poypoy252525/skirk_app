import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_details/data/datasources/media_details_remote_datasource.dart';
import 'package:skirk_app/features/anime_details/data/repositories/media_details_repository_impl.dart';
import 'package:skirk_app/features/anime_details/domain/entities/media_details.dart';
import 'package:skirk_app/features/anime_details/domain/usecases/get_media_details.dart';
import 'package:http/http.dart' as http;

part 'media_details_provider.g.dart';

final mediaDetailsRepository = MediaDetailsRepositoryImpl(
  MediaDetailsRemoteDatasource(http.Client()),
);

@riverpod
Future<MediaDetails> getMediaDetails(Ref ref, {required int mediaId}) {
  final mediaDetails = GetMediaDetails(mediaDetailsRepository);

  return mediaDetails.execute(mediaId);
}
