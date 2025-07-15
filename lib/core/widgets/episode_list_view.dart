import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/widgets/playing_indicator.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';
import 'package:skirk_app/features/anime_details/presentation/providers/episode_list_provider.dart';
import 'package:skirk_app/features/anime_details/presentation/widgets/list_item_card.dart';
import 'package:skirk_app/features/video_player/presentation/providers/playing_data_provider/playing_data_provider.dart';

class EpisodeListView extends ConsumerStatefulWidget {
  const EpisodeListView({
    super.key,
    this.mediaId,
    this.shouldOpenVideoPlayerScreen,
  });

  final int? mediaId;
  final bool? shouldOpenVideoPlayerScreen;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EpisodeListViewState();
}

class _EpisodeListViewState extends ConsumerState<EpisodeListView> {
  @override
  Widget build(BuildContext context) {
    final metadata = ref.watch(playingDataProvider);
    final mediaId = metadata?.mediaId ?? widget.mediaId ?? -1;
    final episodeList = ref.watch(episodeListProvider(mediaId: mediaId));
    return Expanded(
      key: ValueKey('$mediaId'),
      child: episodeList.when(
        data: (episodes) {
          return _buildListView(episodes: episodes, ref: ref, mediaId: mediaId);
        },
        error: (error, stackTrace) {
          return Text('$error');
        },
        loading: () => Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _buildListView({
    required List<Episode> episodes,
    required WidgetRef ref,
    required int mediaId,
  }) {
    final playingData = ref.watch(playingDataProvider);
    return ListView.builder(
      padding: EdgeInsets.only(
        bottom:
            MediaQuery.of(context).padding.bottom - bottomNavigationBarHeight,
      ),
      itemCount: episodes.length,
      itemBuilder: (context, index) => ListItemCard(
        description: episodes[index].description ?? 'No description.',
        image: episodes[index].image ?? '',
        title: episodes[index].title ?? 'No title',
        index: episodes[index].id == playingData?.episode.id
            ? PlayingIndicator()
            : 'EP ${episodes[index].number}',
        onTap: (context) {
          final data = ref.read(playingDataProvider.notifier);
          if (data.get()?.episode.id != episodes[index].id) {
            data.set(
              playingData: Data(mediaId: mediaId, episode: episodes[index]),
            );
          }
        },
      ),
    );
  }
}
