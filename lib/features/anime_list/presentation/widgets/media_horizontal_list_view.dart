import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';
import 'package:skirk_app/features/anime_list/presentation/widgets/media_card.dart';

class MediaHorizontalListView extends StatelessWidget {
  const MediaHorizontalListView({
    super.key,
    required this.mediaList,
    required this.title,
  });

  final AsyncValue<List<Media>> mediaList;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amber,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 8),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          mediaList.when(
            data: (media) => _loadedData(media: media),
            error: (error, stackTrace) => Text('error $error'),
            loading: () => Expanded(child: _listLoading()),
          ),
        ],
      ),
    );
  }
}

Widget _listLoading() {
  return SizedBox(
    height: 200,
    child: ListView.separated(
      itemCount: 3,
      padding: EdgeInsets.only(left: 12, right: 12),
      separatorBuilder: (context, index) => SizedBox(width: 12),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => SizedBox(
        height: 150,
        child: AspectRatio(
          aspectRatio: 9 / 13.5,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    ),
  );
}

Widget _loadedData({required List<Media> media}) {
  return SizedBox(
    height: 200,
    child: ListView.separated(
      padding: EdgeInsets.only(left: 12, right: 12),
      separatorBuilder: (context, index) => SizedBox(width: 12),
      scrollDirection: Axis.horizontal,
      itemCount: media.length,
      itemBuilder: (context, index) {
        return MediaCard(media: media[index]);
      },
    ),
  );
}
