import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/core/providers/minimize_player_screen/minimize_player_screen_provider.dart';
import 'package:skirk_app/features/anime_details/presentation/providers/media_details_provider.dart';
import 'package:skirk_app/features/anime_details/presentation/widgets/media_details_body.dart';

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
      getMediaDetailsProvider(mediaId: int.parse(widget.mediaId)),
    );

    bool? canPop = ref.watch(minimizeAnimationControllerProvider)?.isCompleted;

    debugPrint('$canPop');

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        if (ref.read(minimizeAnimationControllerProvider)?.isCompleted ??
            true) {
          Navigator.pop(context);
          return;
        }

        ref.read(minimizePlayerScreenProvider);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            mediaDetailsAsync.hasValue ? mediaDetailsAsync.value!.title : '',
            style: TextStyle(fontSize: 18),
          ),
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
