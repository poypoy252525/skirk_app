import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';

part 'playing_data_provider.g.dart';

@riverpod
class PlayingData extends _$PlayingData {
  @override
  Data? build() {
    ref.keepAlive();
    return null;
  }

  void set({Data? playingData}) {
    state = playingData;
  }

  Data? get() {
    return state;
  }
}

class Data {
  final Episode episode;
  final int mediaId;

  Data({required this.mediaId, required this.episode});
}
