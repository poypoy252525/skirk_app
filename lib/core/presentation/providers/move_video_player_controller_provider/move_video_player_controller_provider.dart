import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'move_video_player_controller_provider.g.dart';

@Riverpod(keepAlive: true)
class MoveVideoPlayerController extends _$MoveVideoPlayerController {
  @override
  AnimationController? build() {
    return null;
  }

  void set(AnimationController? controller) {
    state = controller;
  }
}
