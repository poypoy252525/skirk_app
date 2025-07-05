import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/features/anime_details/domain/entities/episode.dart';
import 'package:skirk_app/features/anime_details/presentation/providers/episode_list_provider.dart';
import 'package:skirk_app/features/anime_details/presentation/widgets/list_item_card.dart';
import 'package:shimmer/shimmer.dart';

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
      loading: () => _listViewLoading(context: context),
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
            onTap: (context) {
              context.pushNamed(
                'watch',
                pathParameters: {'episodeId': episodes[index].id},
                extra: episodes[index],
              );
            },
          ),
        )
      : Center(child: Text('No episodes.'));
}

Widget _listViewLoading({required BuildContext context}) {
  return ListView.builder(
    itemCount: 3,
    itemBuilder: (context, index) => SizedBox(
      height: 110,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: ShimmerEffect(
                borderRadius: 8,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    ShimmerEffect(height: 16, borderRadius: 4),
                    ShimmerEffect(height: 12, width: 110, borderRadius: 4),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class ShimmerEffect extends StatelessWidget {
  const ShimmerEffect({super.key, this.width, this.height, this.borderRadius});

  final double? width;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Shimmer.fromColors(
        baseColor: Theme.of(context).colorScheme.primary.withAlpha(30),
        highlightColor: Theme.of(context).colorScheme.primary.withAlpha(50),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
          ),
        ),
      ),
    );
  }
}
