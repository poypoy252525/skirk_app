import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'minimize_animation_controller_provider.g.dart';

@riverpod
class MinimizeAnimationController extends _$MinimizeAnimationController {
  @override
  AnimationController? build() {
    return null;
  }

  void dispose() {
    state?.dispose();
  }

  void set(AnimationController controller) {
    state = controller;
  }

  AnimationController? get() => state;
}
