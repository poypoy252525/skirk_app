import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/presentation/providers/playing_data_provider/playing_data_provider.dart';

class EpisodeMetadata extends ConsumerStatefulWidget {
  const EpisodeMetadata({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EpisodeMetadataState();
}

class _EpisodeMetadataState extends ConsumerState<EpisodeMetadata> {
  @override
  Widget build(BuildContext context) {
    final data = ref.watch(playingDataProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                data?.episode.title ?? 'No title',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                'Episode ${data?.episode.number}',
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
        ),
      ],
    );
  }
}
