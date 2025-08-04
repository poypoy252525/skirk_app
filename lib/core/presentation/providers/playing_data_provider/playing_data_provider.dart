import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';

part 'playing_data_provider.g.dart';

@Riverpod(keepAlive: true)
class PlayingData extends _$PlayingData {
  @override
  Data? build() {
    return null;
  }

  void set({
    required Episode episode,
    required MediaDetails mediaDetails,
    // required EpisodeSources episodeSources,
  }) {
    if (state?.episode.id == episode.id &&
        state?.mediaDetails.id == mediaDetails.id) {
      return;
    }
    state = Data(
      episode: episode,
      mediaDetails: mediaDetails,
      // episodeSources: episodeSources,
    );
  }

  void remove() {
    state = null;
  }
}

class Data {
  final MediaDetails mediaDetails;
  final Episode episode;
  // final EpisodeSources episodeSources;

  Data({
    required this.episode,
    required this.mediaDetails,
    // required this.episodeSources,
  });
}
