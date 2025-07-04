import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';

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
      loading: () => SizedBox(
        height: carouselHeight,
        child: Center(child: CircularProgressIndicator()),
      ),
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
            child: Image.network(media.coverImage ?? '', fit: BoxFit.cover),
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
                      FilledButton.icon(
                        onPressed: () {},
                        label: Text('Watch now'),
                        icon: Icon(Icons.play_arrow_outlined),
                        // style: ButtonStyle(
                        //   fixedSize: WidgetStateProperty.resolveWith(
                        //     (states) => Size(200, 0),
                        //   ),
                        // ),
                      ),
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
