import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListItemCard extends StatelessWidget {
  const ListItemCard({
    super.key,
    required this.description,
    required this.image,
    required this.title,
    this.index,
    this.onTap,
  });

  final dynamic index;
  final String title;
  final String image;
  final String description;
  final Function(BuildContext context)? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap != null
          ? () {
              onTap!(context);
            }
          : null,
      child: SizedBox(
        height: 110,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 16 / 9,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: CachedNetworkImage(
                          imageUrl: image,
                          placeholder: (context, url) {
                            return ColoredBox(color: Colors.white24);
                          },
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    if (index != null)
                      Positioned(
                        bottom: 4,
                        right: 4,
                        child: index is String
                            ? Container(
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                child: Text(
                                  index!,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            : index is Widget
                            ? index
                            : null,
                      ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 4,
                  ),
                  child: Column(
                    spacing: 4,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        description,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          height: 1.2,
                          color: Theme.of(
                            context,
                          ).colorScheme.primary.withAlpha(128),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
