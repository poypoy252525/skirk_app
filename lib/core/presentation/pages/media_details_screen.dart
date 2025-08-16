import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/providers/anime_list_provider/anime_list_provider.dart';
import 'package:skirk_app/core/presentation/widgets/anime_provider_dropdown.dart';
import 'package:skirk_app/core/presentation/widgets/media_details/media_details_body.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/video_player_pop_scope.dart';

class MediaDetailsScreen extends ConsumerStatefulWidget {
  const MediaDetailsScreen({super.key, required this.mediaId});

  final String mediaId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MediaDetailsScreenState();
}

class _MediaDetailsScreenState extends ConsumerState<MediaDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaDetailsAsync = ref.watch(
      mediaDetailsProvider(mediaId: int.parse(widget.mediaId)),
    );

    return VideoPlayerPopScope(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            mediaDetailsAsync.hasValue
                ? mediaDetailsAsync.value!.title?.english ??
                      mediaDetailsAsync.value!.title?.romaji ??
                      ''
                : '',
            style: TextStyle(fontSize: 18),
          ),
          actions: [AnimeProviderDropdown()],
        ),
        body: Center(
          child: mediaDetailsAsync.when(
            data: (media) => MediaDetailsBody(mediaDetails: media),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => Padding(
              padding: EdgeInsets.only(bottom: bottomNavigationBarHeight),
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
