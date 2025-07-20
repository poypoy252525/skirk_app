import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';

class VideoPlayerPopScope extends ConsumerStatefulWidget {
  const VideoPlayerPopScope({super.key, this.root, required this.child});

  final Widget child;
  final bool? root;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoPlayerPopScopeState();
}

class _VideoPlayerPopScopeState extends ConsumerState<VideoPlayerPopScope> {
  late bool canPop;

  @override
  void initState() {
    super.initState();
    canPop = true;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;

        final minimizeVideoPlayerController = ref.read(
          minimizeVideoPlayerControllerProvider,
        );

        debugPrint('$minimizeVideoPlayerController');

        if (minimizeVideoPlayerController?.isAnimating ?? false) return;

        if (minimizeVideoPlayerController?.isDismissed ?? false) {
          minimizeVideoPlayerController?.forward();
        } else {
          if (widget.root ?? false) {
            SystemNavigator.pop();
          } else {
            Navigator.pop(context);
          }
        }
      },
      child: widget.child,
    );
  }
}
