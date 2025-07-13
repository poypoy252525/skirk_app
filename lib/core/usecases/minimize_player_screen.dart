import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';

class MinimizePlayerScreen {
  final Ref ref;

  MinimizePlayerScreen({required this.ref});

  void execute() {
    final animationController = ref
        .read(minimizeAnimationControllerProvider.notifier)
        .get();

    animationController?.forward();
  }
}
