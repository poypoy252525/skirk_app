import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';
import 'package:skirk_app/core/domain/repositories/anime_provider_repository.dart';
import 'package:skirk_app/core/presentation/providers/episode_list_provider/episode_list_provider.dart';
import 'package:skirk_app/core/presentation/providers/episode_sources_provider/episode_sources_provider.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';
import 'package:skirk_app/core/presentation/providers/playing_data_provider/playing_data_provider.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/list_item_card.dart';

class MediaDetailsEpisodeListView extends ConsumerStatefulWidget {
  const MediaDetailsEpisodeListView({
    super.key,
    required this.mediaDetails,
    this.bottomPadding,
  });

  final MediaDetails mediaDetails;
  final double? bottomPadding;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EpisodelistviewState();
}

class _EpisodelistviewState extends ConsumerState<MediaDetailsEpisodeListView>
    with AutomaticKeepAliveClientMixin {
  AnimeProvider animeProvider = AnimeProvider.hianime;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final episodeListAsync = ref.watch(
      episodeListProvider(
        malId: widget.mediaDetails.idMal!,
        animeProvider: animeProvider,
      ),
    );

    return episodeListAsync.when(
      data: (episodes) {
        return _listViewBuilder(
          episodes: episodes,
          ref: ref,
          mediaDetails: widget.mediaDetails,
        );
      },
      error: (error, stackTrace) => Text('$error'),
      loading: () => _listViewLoading(context: context),
    );
  }

  Widget _listViewBuilder({
    required List<Episode> episodes,
    required WidgetRef ref,
    required MediaDetails mediaDetails,
  }) {
    return episodes.isNotEmpty
        ? ListView.builder(
            padding: EdgeInsets.only(
              bottom:
                  widget.bottomPadding ?? MediaQuery.paddingOf(context).bottom,
            ),
            itemCount: episodes.length,
            itemBuilder: (context, index) {
              // if (index == 0) {
              //   return GroupButton(
              //     buttons: ['Hianime', 'Animepahe'],
              //     isRadio: true,
              //     buttonBuilder: (selected, value, context) {
              //       return Container(
              //         decoration: BoxDecoration(
              //           color: selected
              //               ? Colors.white
              //               : Theme.of(context).highlightColor,
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              //         child: Text(
              //           value,
              //           style: TextStyle(
              //             color: selected ? Colors.black : Colors.white,
              //             fontSize: 16,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       );
              //     },
              //     onSelected: (value, index, isSelected) {
              //       setState(() {
              //         animeProvider = index == 0
              //             ? AnimeProvider.hianime
              //             : AnimeProvider.animepahe;
              //       });
              //     },
              //   );
              // }

              return ListItemCard(
                description: episodes[index].description ?? 'No description.',
                image:
                    episodes[index].image ??
                    mediaDetails.coverImage?.large ??
                    '',
                title: episodes[index].title ?? 'No title',
                index:
                    episodes[index].duration ?? 'EP ${episodes[index].number}',
                onTap: (context) {
                  final playingData = ref.read(playingDataProvider);

                  if (playingData?.episode.id != episodes[index].id) {
                    ref
                        .read(playingDataProvider.notifier)
                        .set(
                          episode: episodes[index],
                          mediaDetails: widget.mediaDetails,
                        );
                    final episodeSourcesNotifier = ref.read(
                      episodeSourcesProvider.notifier,
                    );

                    episodeSourcesNotifier.remove();
                    episodeSourcesNotifier.set(
                      episodeId: episodes[index].id,
                      animeProvider: animeProvider,
                    );
                  }

                  final minimizeVideoPlayerController = ref.read(
                    minimizeVideoPlayerControllerProvider,
                  );
                  minimizeVideoPlayerController?.reverse();
                  debugPrint('my controller: $minimizeVideoPlayerController');
                  showMinimizableScreen.value = true;
                },
              );
            },
          )
        : Center(child: Text('No episodes.'));
  }

  @override
  bool get wantKeepAlive => true;
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
