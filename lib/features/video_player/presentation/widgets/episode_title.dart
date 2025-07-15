import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/video_player/presentation/providers/playing_data_provider/playing_data_provider.dart';

class EpisodeTitle extends ConsumerWidget {
  const EpisodeTitle({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final playingData = ref.watch(playingDataProvider);
    if (playingData == null) return SizedBox();
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            playingData.episode.title ?? '',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Episode ${playingData.episode.number}',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
              color: Theme.of(
                context,
              ).colorScheme.primary.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}
