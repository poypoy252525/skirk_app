import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/domain/entities/media.dart';
import 'package:skirk_app/core/presentation/providers/anime_list_provider/anime_list_provider.dart';
import 'package:skirk_app/core/presentation/widgets/anime_list/media_card.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        actionsPadding: EdgeInsets.only(right: 4),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed('search');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: DiscoverListView(),
    );
  }
}

class DiscoverListView extends ConsumerStatefulWidget {
  const DiscoverListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DiscoverListViewState();
}

class _DiscoverListViewState extends ConsumerState<DiscoverListView> {
  int _page = 0;
  final int _perPage = 24;
  bool _loading = false;
  final List<Media> mediaList = [];

  final ScrollController _controller = ScrollController();

  void _fetchNextPage() async {
    setState(() {
      _page++;
      _loading = true;
    });
    final nextPageList = await ref.read(
      allTimePopularProvider(page: _page, perPage: _perPage).future,
    );

    mediaList.addAll(nextPageList);

    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();

    _fetchNextPage();

    _controller.addListener(() {
      if (_controller.offset > _controller.position.maxScrollExtent - 1000 &&
          !_loading) {
        _fetchNextPage();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return _buildGridView(mediaList);
  }

  Widget _buildGridView(List<Media> mediaList) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        controller: _controller,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 9 / 16,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: mediaList.length,
        itemBuilder: (context, index) {
          return MediaCard(media: mediaList[index]);
        },
      ),
    );
  }
}
