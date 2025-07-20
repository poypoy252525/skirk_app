import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';
import 'package:skirk_app/core/presentation/providers/move_video_player_controller_provider/move_video_player_controller_provider.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/animated_container_background.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/draggable_video_player.dart';

class VideoPlayerScreen extends ConsumerStatefulWidget {
  const VideoPlayerScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends ConsumerState<VideoPlayerScreen>
    with TickerProviderStateMixin {
  late AnimationController minimizeVideoPlayerController;
  late AnimationController moveVideoPlayerController;

  @override
  void initState() {
    super.initState();
    minimizeVideoPlayerController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );

    moveVideoPlayerController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 250),
    );

    Future.microtask(() {
      ref
          .read(minimizeVideoPlayerControllerProvider.notifier)
          .set(minimizeVideoPlayerController);
      ref
          .read(moveVideoPlayerControllerProvider.notifier)
          .set(moveVideoPlayerController);
    });
  }

  @override
  void dispose() {
    minimizeVideoPlayerController.dispose();
    moveVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([
        minimizeVideoPlayerController,
        moveVideoPlayerController,
      ]),
      builder: (context, child) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Positioned.fill(
                  child: AnimatedContainerBackground(
                    minimizeVideoPlayerController:
                        minimizeVideoPlayerController,
                  ),
                ),
                DraggableVideoPlayer(
                  constraints: constraints,
                  minimizeVideoPlayerController: minimizeVideoPlayerController,
                  moveVideoPlayerController: moveVideoPlayerController,
                ),
              ],
            );
          },
        );
      },
    );
  }
}
