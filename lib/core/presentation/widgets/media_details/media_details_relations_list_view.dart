import 'package:flutter/material.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/list_item_card.dart';

class MediaDetailsRelationsListView extends StatefulWidget {
  const MediaDetailsRelationsListView({super.key, required this.mediaDetails});

  final MediaDetails mediaDetails;

  @override
  State<MediaDetailsRelationsListView> createState() =>
      _MediaDetailsRelationsListViewState();
}

class _MediaDetailsRelationsListViewState
    extends State<MediaDetailsRelationsListView>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ListView.builder(
      itemCount: widget.mediaDetails.relations?.edges?.length,
      itemBuilder: (context, index) {
        final relation = widget.mediaDetails.relations?.edges?[index];
        return ListItemCard(
          description: relation?.relationType ?? '',
          image: relation?.node?.coverImage?.large ?? '',
          title: relation?.node?.title?.english ?? '',
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
