import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/providers/anime_list_provider/anime_list_provider.dart';
import 'package:skirk_app/core/presentation/widgets/anime_list/media_carousel.dart';
import 'package:skirk_app/core/presentation/widgets/anime_list/media_horizontal_list_view.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final trendingMediaAsync = ref.watch(
      trendingTVShowsProvider(page: 1, perPage: 10),
    );
    final popularMediaAsync = ref.watch(
      allTimePopularProvider(page: 1, perPage: 10),
    );
    final topMoviesMediaAsync = ref.watch(popularMoviesProvider());
    final popularThisSeasonAsync = ref.watch(
      popularThisSeasonProvider(page: 1, perPage: 10),
    );
    final topRatedMediaAsync = ref.watch(
      topRatedTVShowsProvider(page: 1, perPage: 10),
    );
    final latestMediaASync = ref.watch(
      latestTVShowsProvider(page: 1, perPage: 10),
    );

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: bottomNavigationBarHeight + 16),
        child: Column(
          spacing: 16,
          children: [
            MediaCarousel(mediaListAsync: popularThisSeasonAsync),
            SizedBox(),
            MediaHorizontalListView(
              mediaList: latestMediaASync,
              title: 'Latest TV Shows',
            ),
            MediaHorizontalListView(
              mediaList: trendingMediaAsync,
              title: 'Trending Now',
            ),
            MediaHorizontalListView(
              mediaList: popularMediaAsync,
              title: 'Most Popular',
            ),
            MediaHorizontalListView(
              mediaList: topMoviesMediaAsync,
              title: 'Top Movies',
            ),
            MediaHorizontalListView(
              mediaList: topRatedMediaAsync,
              title: 'Top Rated',
            ),
          ],
        ),
      ),
    );
  }
}
