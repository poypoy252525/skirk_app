import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AnimatedContainerBackground extends ConsumerWidget {
  const AnimatedContainerBackground({
    super.key,
    this.child,
    required this.minimizeVideoPlayerController,
  });

  final Widget? child;
  final AnimationController minimizeVideoPlayerController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bgColorTween = ColorTween(
      begin: Theme.of(context).scaffoldBackgroundColor,
      end: Colors.transparent,
    );
    final bgColor = bgColorTween.animate(
      CurvedAnimation(
        parent: minimizeVideoPlayerController,
        curve: Interval(0.3, 0.8, curve: Curves.linear),
      ),
    );

    return IgnorePointer(
      ignoring: minimizeVideoPlayerController.isCompleted,
      child: Container(color: bgColor.value, child: child),
    );
  }
}
