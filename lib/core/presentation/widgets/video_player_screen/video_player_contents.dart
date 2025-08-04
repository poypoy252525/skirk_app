import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';
import 'package:skirk_app/core/presentation/providers/playing_data_provider/playing_data_provider.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/episode_list_view.dart';

class VideoPlayerContents extends ConsumerStatefulWidget {
  const VideoPlayerContents({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoPlayerContentsState();
}

class _VideoPlayerContentsState extends ConsumerState<VideoPlayerContents> {
  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(minimizeVideoPlayerControllerProvider);
    final playingData = ref.watch(playingDataProvider);

    if (controller == null || playingData == null) return SizedBox();

    final opacity = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(CurvedAnimation(parent: controller, curve: Interval(0.0, 0.3)));

    return IgnorePointer(
      ignoring: opacity.value == 0,
      child: Opacity(
        opacity: opacity.value,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    playingData.episode.title ??
                        'Episode ${playingData.episode.number}',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    playingData.mediaDetails.title?.english ??
                        playingData.mediaDetails.title?.romaji ??
                        '',
                    style: TextStyle(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.65),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MediaDetailsEpisodeListView(
                mediaDetails: playingData.mediaDetails,
                bottomPadding:
                    MediaQuery.paddingOf(context).bottom -
                    bottomNavigationBarHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
