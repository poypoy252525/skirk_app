import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/features/anime_list/domain/entities/media.dart';

class MediaCard extends StatelessWidget {
  const MediaCard({super.key, required this.media});

  final Media media;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: () {
        context.pushNamed(
          'media_details',
          pathParameters: {'mediaId': media.id.toString()},
        );
      },
      child: SizedBox(
        height: 200,
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: Column(
            spacing: 3,
            children: [
              AspectRatio(
                aspectRatio: 9 / 13.5,
                child: media.coverImage != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.network(
                          media.coverImage!,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Placeholder(),
              ),
              Expanded(
                child: Text(
                  media.title ?? 'No title',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, height: 1.2),

                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
