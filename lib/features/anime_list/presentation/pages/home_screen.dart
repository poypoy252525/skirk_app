import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/latest_media_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/popular_media_by_season_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/popular_media_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/top_movies_media_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/top_rated_media_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/trending_media_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/widgets/media_carousel.dart';
import 'package:skirk_app/features/anime_list/presentation/widgets/media_horizontal_list_view.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final trendingMediaAsync = ref.watch(
      trendingMediaProvider(page: 1, perPage: 10),
    );
    final popularMediaAsync = ref.watch(
      popularMediaProvider(page: 1, perPage: 10),
    );
    final topMoviesMediaAsync = ref.watch(topMoviesMediaProvider(1, 10));
    final popularThisSeasonAsync = ref.watch(
      popularMediaBySeasonProvider(page: 1, perPage: 10),
    );
    final topRatedMediaAsync = ref.watch(
      topRatedMediaProvider(page: 1, perPage: 10),
    );
    final latestMediaASync = ref.watch(
      latestMediaProvider(page: 1, perPage: 10),
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
