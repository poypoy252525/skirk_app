import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:skirk_app/core/providers/fade_animation_provider/fade_animation_provider.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/video_player_widget.dart';

class MinimizableScreen extends ConsumerStatefulWidget {
  const MinimizableScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MinimizableScreenState();
}

class _MinimizableScreenState extends ConsumerState<MinimizableScreen> {
  final player = VideoPlayerWidget(episodeId: 'attack-on-titan-112?ep=3309');

  bool isPanning = false;
  bool shouldIgnore = true;
  bool canPop = false;
  late AnimationController? controller;
  late AnimationController? fadeController;

  @override
  void initState() {
    super.initState();
    controller = ref.read(minimizeAnimationControllerProvider.notifier).get();
    fadeController = ref.read(fadeAnimationProvider.notifier).get();

    controller?.addStatusListener((status) {
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
  Widget build(BuildContext context) {
    if (controller == null || fadeController == null) return SizedBox();
    final bgColor = ColorTween(
      begin: Theme.of(context).scaffoldBackgroundColor,
      end: Colors.transparent,
    ).animate(CurvedAnimation(parent: controller!, curve: Interval(0.4, 1)));

    final scale = Tween<double>(begin: 1, end: 0.55).animate(controller!);

    final positionX = Tween<double>(begin: 0, end: 8).animate(controller!);

    final borderRadius = Tween<double>(begin: 0, end: 12).animate(controller!);

    final opacity = Tween<double>(begin: 1, end: 0).animate(fadeController!);

    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (controller!.isDismissed) {
          controller!.forward();
          setState(() {
            canPop = true;
          });
        }
      },
      child: AnimatedBuilder(
        animation: Listenable.merge([controller, fadeController]),
        builder: (context, child) {
          return LayoutBuilder(
            builder: (context, constraints) {
              final containerHeight = constraints.maxHeight;
              final height =
                  (9 / 16 * MediaQuery.of(context).size.width) * scale.value;

              final positionY =
                  Tween<double>(
                    begin: 0,
                    end:
                        containerHeight -
                        MediaQuery.of(context).padding.top -
                        MediaQuery.of(context).padding.bottom -
                        height -
                        8,
                  ).animate(
                    CurvedAnimation(parent: controller!, curve: Curves.easeIn),
                  );
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
                    child: SafeArea(
                      child: Opacity(
                        opacity: opacity.value,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            borderRadius.value,
                          ),
                          child: SizedBox(
                            width:
                                MediaQuery.of(context).size.width * scale.value,
                            height: height,
                            child: player,
                          ),
                        ),
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
