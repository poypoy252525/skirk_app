import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/domain/entities/media.dart';
import 'package:skirk_app/core/presentation/providers/anime_list_provider/anime_list_provider.dart';
import 'package:skirk_app/core/presentation/widgets/anime_list/media_card.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/video_player_pop_scope.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  String _query = '';
  @override
  Widget build(BuildContext context) {
    return VideoPlayerPopScope(
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 0,
          title: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: SearchBar(
              hintText: 'Search...',
              textStyle: WidgetStatePropertyAll(TextStyle(fontSize: 16)),
              constraints: BoxConstraints(
                minHeight: 35, // 🔥 force compact height
                maxHeight: 35,
              ),
              elevation: WidgetStatePropertyAll(0),
              onSubmitted: (value) {
                setState(() {
                  _query = value;
                });
              },
            ),
          ),
        ),
        body: SearchList(query: _query),
      ),
    );
  }
}

class SearchList extends ConsumerStatefulWidget {
  const SearchList({super.key, required this.query});

  final String query;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchListState();
}

class _SearchListState extends ConsumerState<SearchList> {
  final ScrollController _scrollController = ScrollController();
  final List<Media> _mediaList = [];
  int page = 1;
  bool loading = false;

  void _loadNextPage(int nextPage) async {
    setState(() {
      loading = true;
    });

    final nextPageList = await ref.read(
      searchProvider(query: widget.query, page: nextPage, perPage: 24).future,
    );
    setState(() {
      _mediaList.addAll(nextPageList);
      loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadNextPage(page);
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
              _scrollController.position.maxScrollExtent * 0.6 &&
          !loading) {
        page++;
        _loadNextPage(page);
      }
    });
  }

  @override
  void didUpdateWidget(covariant SearchList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.query != widget.query) {
      setState(() {
        page = 1;
        _mediaList.clear();
        loading = false;
      });
      _loadNextPage(page);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.query == '') return SizedBox();
    return GridView.builder(
      controller: _scrollController,
      itemCount: _mediaList.length,
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
        bottom: MediaQuery.of(context).padding.bottom + 8,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 9 / 16,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        // mainAxisExtent: 1000,
      ),
      itemBuilder: (context, index) {
        final media = _mediaList[index];
        return MediaCard(media: media);
      },
    );
  }
}
