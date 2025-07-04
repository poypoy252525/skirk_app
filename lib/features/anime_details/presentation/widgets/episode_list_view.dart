import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';
import 'package:skirk_app/features/anime_details/presentation/providers/episode_list_provider.dart';
import 'package:skirk_app/features/anime_details/presentation/widgets/list_item_card.dart';

class Episodelistview extends ConsumerStatefulWidget {
  const Episodelistview({super.key, required this.mediaId});

  final int mediaId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EpisodelistviewState();
}

class _EpisodelistviewState extends ConsumerState<Episodelistview>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final episodeListAsync = ref.watch(
      episodeListProvider(mediaId: widget.mediaId),
    );

    return episodeListAsync.when(
      data: (episodes) => _listViewBuilder(episodes: episodes),
      error: (error, stackTrace) => Text('$error'),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

Widget _listViewBuilder({required List<Episode> episodes}) {
  return episodes.isNotEmpty
      ? ListView.builder(
          itemCount: episodes.length,
          itemBuilder: (context, index) => ListItemCard(
            description: episodes[index].description ?? 'No description.',
            image: episodes[index].image ?? '',
            title: episodes[index].title ?? 'No title',
            index: 'EP ${episodes[index].number}',
            onTap: (context) {},
          ),
        )
      : Center(child: Text('No episodes.'));
}
