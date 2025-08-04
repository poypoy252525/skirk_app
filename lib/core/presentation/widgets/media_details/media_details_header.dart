import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skirk_app/core/domain/entities/media_details.dart';

class MediaDetailsHeader extends StatelessWidget {
  const MediaDetailsHeader({super.key, required this.mediaDetails});

  final MediaDetails mediaDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 225,
      child: Stack(
        children: [
          Positioned.fill(
            child: CachedNetworkImage(
              imageUrl: mediaDetails.coverImage?.large ?? '',
              fit: BoxFit.cover,
            ),
          ),

          Positioned.fill(
            child: ClipRRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
                child: Container(),
              ),
            ),
          ),
          Positioned.fill(
            bottom: -1,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    // Theme.of(context).scaffoldBackgroundColor,
                    Colors.transparent,
                    Theme.of(context).scaffoldBackgroundColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [0.0, 0.9],
                ),
              ),
            ),
          ),
          Positioned.fill(child: _Header(mediaDetails: mediaDetails)),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.mediaDetails});

  final MediaDetails mediaDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: SizedBox(
            height: 150,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl:
                    mediaDetails.bannerImage ??
                    mediaDetails.coverImage?.large ??
                    '',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        // Text('data'),
      ],
    );
  }
}
