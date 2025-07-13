import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fade_animation_provider.g.dart';

@riverpod
class FadeAnimation extends _$FadeAnimation {
  @override
  AnimationController? build() {
    return null;
  }

  void set(AnimationController controller) {
    state = controller;
  }

  AnimationController? get() => state;

  void dispose() {
    state?.dispose();
  }
}
