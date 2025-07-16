import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'drag_video_player_provider.g.dart';

@riverpod
class DragVideoPlayerY extends _$DragVideoPlayerY {
  @override
  AnimationController? build() {
    ref.keepAlive();
    return null;
  }

  void set(AnimationController controller) {
    debugPrint('$controller');
    state = controller;
  }

  AnimationController? get() => state;

  void dispose() {
    state?.dispose();
  }
}

@Riverpod(keepAlive: true)
class DragVideoPlayerX extends _$DragVideoPlayerX {
  @override
  AnimationController? build() {
    return null;
  }

  void set(AnimationController controller) {
    state = controller;
  }

  void dispose() {
    state?.dispose();
  }
}
