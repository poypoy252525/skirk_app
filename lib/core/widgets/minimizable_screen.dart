import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' hide Provider;
import 'package:skirk_app/core/providers/fade_animation_provider/fade_animation_provider.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/features/video_player/presentation/widgets/video_player_widget.dart';
import 'package:video_player/video_player.dart';

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
  late AnimationController fadeController;

  @override
  void initState() {
    super.initState();
    controller = ref.read(minimizeAnimationControllerProvider.notifier).get();
    fadeController = ref.read(fadeAnimationProvider.notifier).get()!;

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
    if (controller == null) return SizedBox();
    final bgColor = ColorTween(
      begin: Theme.of(context).scaffoldBackgroundColor,
      end: Colors.transparent,
    ).animate(CurvedAnimation(parent: controller!, curve: Interval(0.4, 1)));

    final scale = Tween<double>(begin: 1, end: 0.55).animate(controller!);

    final positionX = Tween<double>(begin: 0, end: 8).animate(controller!);

    final borderRadius = Tween<double>(begin: 0, end: 12).animate(controller!);

    final opacity = Tween<double>(begin: 1, end: 0).animate(fadeController);

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
        animation: controller!,
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

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    debugPrint('player init');
    _controller = VideoPlayerController.networkUrl(
      Uri.parse(
        'https://cloudburst82.xyz/_v7/28791b4450a4bd999da7a5a983de49930c0494486687bf9b7fa71011892d90287d6375c44fc09cb56dac65c11f2ab3c8f248d7b09b8f4fcbb60b78b72c725d172a3d71bc3ea40523f9c43733ec306f583dac0b19d9727e8250055490546047bf6a6d7e356b06f3033b17b9fd3786f59aa8cb7b492cca324ef0f5734042430874/master.m3u8',
      ),
      httpHeaders: {'Referer': 'https://megacloud.blog/'},
    );
    _controller.initialize();

    _controller.play();
  }

  @override
  void dispose() {
    debugPrint('player dispose');
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }
}
