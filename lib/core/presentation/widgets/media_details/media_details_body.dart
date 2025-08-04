import 'package:extended_nested_scroll_view/extended_nested_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/episode_list_view.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/media_details_header.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/media_details_relations_list_view.dart';

class MediaDetailsBody extends StatelessWidget {
  const MediaDetailsBody({super.key, required this.mediaDetails});

  final MediaDetails mediaDetails;

  @override
  Widget build(BuildContext context) {
    final tabs = <Widget>[
      Tab(text: 'Episodes'),
      Tab(text: 'Relations'),
      Tab(text: 'Characters'),
    ];

    return DefaultTabController(
      length: tabs.length,
      child: ExtendedNestedScrollView(
        onlyOneScrollInBody: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: MediaDetailsHeader(mediaDetails: mediaDetails),
          ),
        ],
        body: Column(
          children: [
            Container(
              color: Theme.of(context).scaffoldBackgroundColor,
              child: TabBar(tabs: tabs),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MediaDetailsEpisodeListView(mediaDetails: mediaDetails),
                  MediaDetailsRelationsListView(mediaDetails: mediaDetails),
                  ListViewPlaceholder(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListViewPlaceholder extends StatefulWidget {
  const ListViewPlaceholder({super.key});

  @override
  State<ListViewPlaceholder> createState() => _ListViewPlaceholderState();
}

class _ListViewPlaceholderState extends State<ListViewPlaceholder>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: 30,
      itemBuilder: (context, index) =>
          ListTile(title: Text('Item $index'), onTap: () {}),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
