import 'package:flutter/material.dart';
import 'package:skirk_app/core/constants.dart';

void panUpdateVideoPlayer({
  required BuildContext context,
  required AnimationController animationController,
  required DragUpdateDetails details,
}) {
  animationController.value +=
      (details.delta.dy /
          (MediaQuery.of(context).size.height -
              (bottomNavigationBarHeight +
                  MediaQuery.of(context).padding.bottom) -
              200) -
      MediaQuery.of(context).padding.top);
  animationController.value = animationController.value.clamp(0, 1);
}

void maximizeVideoPlayer({required AnimationController animationController}) {
  if (animationController.isCompleted) {
    animationController.reverse();
  }
}

void panEndVideoPlayer({
  required AnimationController animationController,
  required DragEndDetails details,
}) {
  if (details.velocity.pixelsPerSecond.dy > 1000) {
    animationController.forward();
    return;
  }

  if (animationController.value > 0.6) {
    animationController.forward();
  } else {
    animationController.reverse();
  }
}
