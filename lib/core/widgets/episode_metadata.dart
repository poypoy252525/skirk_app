import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/anime_details/presentation/providers/media_details_provider.dart';
import 'package:skirk_app/features/video_player/presentation/providers/playing_data_provider/playing_data_provider.dart';

class EpisodeMetadata extends ConsumerStatefulWidget {
  const EpisodeMetadata({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EpisodeMetadataState();
}

class _EpisodeMetadataState extends ConsumerState<EpisodeMetadata> {
  @override
  Widget build(BuildContext context) {
    final metadata = ref.watch(playingDataProvider);
    if (metadata == null) return SizedBox();
    final mediaDetails = ref.watch(
      getMediaDetailsProvider(mediaId: metadata.mediaId),
    );
    return mediaDetails.when(
      data: (mediaDetails) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                metadata.episode.title ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 18,
                  height: 1.2,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '${mediaDetails.title}   |   Episode ${metadata.episode.number}',
                style: TextStyle(
                  color: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.6),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Text('$error');
      },
      loading: () {
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
