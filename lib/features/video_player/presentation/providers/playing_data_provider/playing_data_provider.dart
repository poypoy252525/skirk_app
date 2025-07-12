import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';

part 'playing_data_provider.g.dart';

@riverpod
class PlayingData extends _$PlayingData {
  @override
  Episode? build() => null;

  void set({required Episode episode}) {
    state = episode;
  }
}
