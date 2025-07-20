import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minimize_video_player_controller_provider.g.dart';

@Riverpod(keepAlive: true)
class MinimizeVideoPlayerController extends _$MinimizeVideoPlayerController {
  @override
  AnimationController? build() {
    return null;
  }

  void set(AnimationController? controller) {
    state = controller;
  }
}
