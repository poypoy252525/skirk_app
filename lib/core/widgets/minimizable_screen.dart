import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:skirk_app/core/providers/fade_animation_provider/fade_animation_provider.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/core/widgets/draggable_video_player.dart';
import 'package:skirk_app/core/widgets/episode_list_view.dart';
import 'package:skirk_app/core/widgets/episode_metadata.dart';
import 'package:skirk_app/features/video_player/presentation/providers/playing_data_provider/playing_data_provider.dart';

class MinimizableScreen extends ConsumerStatefulWidget {
  const MinimizableScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MinimizableScreenState();
}

class _MinimizableScreenState extends ConsumerState<MinimizableScreen> {
  bool isPanning = false;
  bool shouldIgnore = true;
  bool canPop = false;
  late AnimationController? minimizeController;
  late AnimationController? fadeController;

  @override
  void initState() {
    super.initState();
    minimizeController = ref
        .read(minimizeAnimationControllerProvider.notifier)
        .get();
    fadeController = ref.read(fadeAnimationProvider.notifier).get();

    minimizeController?.addStatusListener((status) {
      if (!mounted) return;
      setState(() {
        if (status.isCompleted) {
          canPop = true;
          shouldIgnore = true;
        } else {
          canPop = false;
          shouldIgnore = false;
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (minimizeController == null || fadeController == null) return SizedBox();

    final playingData = ref.watch(playingDataProvider);

    final CurvedAnimation curvedAnimation = CurvedAnimation(
      parent: minimizeController!,
      curve: Curves.easeInQuad,
    );

    final bgColor =
        ColorTween(
          begin: Theme.of(context).scaffoldBackgroundColor,
          // begin: Colors.amber,
          end: Colors.transparent,
        ).animate(
          CurvedAnimation(
            parent: minimizeController!,
            curve: Interval(0.35, 0.8, curve: curvedAnimation.curve),
          ),
        );

    final scale = Tween<double>(begin: 1, end: 0.55).animate(curvedAnimation);
    final positionX = Tween<double>(begin: 0, end: 8).animate(
      CurvedAnimation(parent: minimizeController!, curve: Interval(0.35, 1)),
    );
    final positionY = Tween<double>(
      begin: 0,
      end:
          MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top -
          MediaQuery.of(context).padding.bottom -
          (9 / 16 * MediaQuery.of(context).size.width) * 0.55 -
          8,
    ).animate(curvedAnimation);
    final borderRadius = Tween<double>(
      begin: 0,
      end: 9,
    ).animate(minimizeController!);
    final opacity = Tween<double>(begin: 1, end: 0).animate(fadeController!);
    final contentOpacity = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(
        parent: minimizeController!,
        curve: Interval(0.0, 0.35, curve: curvedAnimation.curve),
      ),
    );

    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (minimizeController!.isDismissed) {
          minimizeController!.forward();
          setState(() {
            canPop = true;
          });
        }
      },
      child: AnimatedBuilder(
        animation: Listenable.merge([minimizeController, fadeController]),
        builder: (context, child) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final height =
                  (9 / 16 * MediaQuery.of(context).size.width) * scale.value;

              return Stack(
                children: [
                  Positioned.fill(
                    child: IgnorePointer(
                      ignoring: shouldIgnore,
                      child: Container(color: bgColor.value),
                    ),
                  ),
                  Positioned(
                    top: positionY.value,
                    right: positionX.value,
                    left: 0,
                    height: MediaQuery.of(context).size.height,
                    child: SafeArea(
                      bottom: false,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          DraggableVideo(
                            borderRadius: borderRadius,
                            height: height,
                            opacity: opacity,
                            playingData: playingData,
                            scale: scale,
                          ),
                          Expanded(
                            child: IgnorePointer(
                              ignoring: contentOpacity.value == 0,
                              child: Opacity(
                                opacity: contentOpacity.value,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    EpisodeMetadata(),
                                    EpisodeListView(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // Expanded(
                          //   child: Column(
                          //     children: [
                          //       Text('hello'),
                          //       Expanded(child: Container(color: Colors.black)),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
