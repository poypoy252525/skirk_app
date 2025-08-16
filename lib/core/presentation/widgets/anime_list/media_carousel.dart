import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/domain/entities/episode.dart';
import 'package:skirk_app/core/domain/entities/media.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';
import 'package:skirk_app/core/presentation/providers/anime_list_provider/anime_list_provider.dart';
import 'package:skirk_app/core/presentation/providers/episode_list_provider/episode_list_provider.dart';
import 'package:skirk_app/core/presentation/providers/episode_sources_provider/episode_sources_provider.dart';
import 'package:skirk_app/core/presentation/providers/playing_data_provider/playing_data_provider.dart';
import 'package:skirk_app/core/presentation/providers/settings_provider/settings_provider.dart';

class MediaCarousel extends StatelessWidget {
  const MediaCarousel({super.key, required this.mediaListAsync});

  final AsyncValue<List<Media>> mediaListAsync;

  @override
  Widget build(BuildContext context) {
    final double carouselHeight = 480;
    final CarouselOptions carouselOptions = CarouselOptions(
      height: carouselHeight,
      autoPlay: true,
      viewportFraction: 1,
    );

    return mediaListAsync.when(
      data: (mediaList) => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: CarouselSlider(
          items: mediaList
              .map(
                (el) => Builder(builder: (context) => CarouselItem(media: el)),
              )
              .toList(),
          options: carouselOptions,
        ),
      ),
      error: (error, stackTrace) => Text(error.toString()),
      loading: () => SizedBox(height: carouselHeight),
    );
  }
}

class CarouselItem extends StatelessWidget {
  const CarouselItem({super.key, required this.media});

  final Media media;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: media.coverImage!.extraLarge!,
              placeholder: (context, url) {
                return ColoredBox(color: Colors.white24);
              },
              errorWidget: (context, url, error) => Icon(Icons.error),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [0, 0.92],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Column(
                spacing: 4,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    media.title ?? '',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      height: 1,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        media.year != null ? media.year.toString() : '----',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: DefaultTextStyle.of(
                            context,
                          ).style.color!.withAlpha(176),
                        ),
                      ),
                      Text(
                        media.genres != null && media.genres!.isNotEmpty
                            ? media.genres![0]
                            : '----',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: DefaultTextStyle.of(
                            context,
                          ).style.color!.withAlpha(176),
                        ),
                      ),
                      Text(
                        media.format != null ? media.format! : '----',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: DefaultTextStyle.of(
                            context,
                          ).style.color!.withAlpha(176),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 6,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Column(
                          children: [
                            Icon(Icons.add, size: 14),
                            Text('Save', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                      WatchNowButton(idMal: media.idMal, mediaId: media.id),
                      TextButton(
                        onPressed: () {
                          context.pushNamed(
                            'media_details',
                            pathParameters: {'mediaId': media.id.toString()},
                          );
                        },
                        child: Column(
                          children: [
                            Icon(Icons.info_outlined, size: 14),
                            Text('Info', style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WatchNowButton extends ConsumerStatefulWidget {
  const WatchNowButton({super.key, required this.idMal, required this.mediaId});

  final int idMal;
  final int mediaId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => WatchNowButtonState();
}

class WatchNowButtonState extends ConsumerState<WatchNowButton> {
  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: () async {
        final playingDataNotifier = ref.read(playingDataProvider.notifier);
        final provider = ref.read(animeProvider);
        final [
          episodes as List<Episode>,
          mediaDetails as MediaDetails,
        ] = await Future.wait([
          ref.read(
            episodeListProvider(
              malId: widget.idMal,
              animeProvider: provider,
            ).future,
          ),
          ref.read(mediaDetailsProvider(mediaId: widget.mediaId).future),
        ]);

        playingDataNotifier.set(
          episode: episodes[0],
          mediaDetails: mediaDetails,
        );

        final episodeSourcesNotifier = ref.read(
          episodeSourcesProvider.notifier,
        );

        episodeSourcesNotifier.remove();
        episodeSourcesNotifier.set(
          episodeId: episodes[0].id,
          animeProvider: provider,
        );

        showMinimizableScreen.value = true;
      },
      label: Text('Watch now'),
      icon: Icon(Icons.play_arrow_outlined),
    );
  }
}
