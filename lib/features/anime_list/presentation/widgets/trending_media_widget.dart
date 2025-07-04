import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/anime_list/presentation/providers/trending_media_provider.dart';
import 'package:skirk_app/features/anime_list/presentation/widgets/media_horizontal_list_view.dart';

class TrendingMediaWidget extends ConsumerStatefulWidget {
  const TrendingMediaWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TrendingMediaWidgetState();
}

class _TrendingMediaWidgetState extends ConsumerState<TrendingMediaWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final trendingMediaAsync = ref.watch(mediaListProvider);
    return MediaHorizontalListView(
      mediaList: trendingMediaAsync,
      title: 'Trending',
    );
  }
}
