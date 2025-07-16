import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/features/video_player/presentation/providers/drag_video_player_provider/drag_video_player_provider.dart';

class DragVideoPlayerGesture extends ConsumerStatefulWidget {
  const DragVideoPlayerGesture({
    super.key,
    required this.child,
    this.onPanEnd,
    this.onPanStart,
    this.onPanUpdate,
    this.onTap,
    this.canMove,
  });

  final Widget child;
  final Function(DragUpdateDetails details)? onPanUpdate;
  final Function(DragEndDetails details)? onPanEnd;
  final Function(DragStartDetails details)? onPanStart;
  final Function? onTap;
  final bool? canMove;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DragVideoPlayerGestureState();
}

class _DragVideoPlayerGestureState
    extends ConsumerState<DragVideoPlayerGesture> {
  late AnimationController? _dragVideoPlayerYController;
  late AnimationController? _minimizeController;
  late AnimationController? _dragVideoPlayerXController;

  @override
  void initState() {
    super.initState();

    _dragVideoPlayerYController = ref.read(dragVideoPlayerYProvider);
    _minimizeController = ref.read(minimizeAnimationControllerProvider);
    _dragVideoPlayerXController = ref.read(dragVideoPlayerXProvider);
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);

    final containerHeight =
        mediaQueryData.size.height -
        mediaQueryData.padding.bottom -
        mediaQueryData.padding.top -
        ((9 / 16 * MediaQuery.of(context).size.width) * 0.55) -
        16;
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      onPanStart: (details) {
        widget.onPanStart?.call(details);
      },
      onPanUpdate: (details) {
        widget.onPanUpdate?.call(details);
        // if (widget.canMove != null && !widget.canMove!) return;
        if (_minimizeController?.isCompleted ?? false) {
          _dragVideoPlayerYController?.value -=
              details.delta.dy / containerHeight;
          _dragVideoPlayerXController?.value -=
              details.delta.dx /
              (MediaQuery.of(context).size.width -
                  (((9 / 16 * MediaQuery.of(context).size.width) * 0.55) *
                      (16 / 9)) -
                  16);
        }
      },

      onPanEnd: (details) {
        widget.onPanEnd?.call(details);
        // if (widget.canMove != null && !widget.canMove!) return;
        if (_dragVideoPlayerYController == null ||
            _dragVideoPlayerXController == null) {
          return;
        }

        if (details.velocity.pixelsPerSecond.dy > 800) {
          _dragVideoPlayerYController!.reverse();
        }

        if (details.velocity.pixelsPerSecond.dy < -800) {
          _dragVideoPlayerYController!.forward();
        }
        if (details.velocity.pixelsPerSecond.dx > 800) {
          _dragVideoPlayerXController!.reverse();
        }

        if (details.velocity.pixelsPerSecond.dx < -800) {
          _dragVideoPlayerXController!.forward();
        }

        if (details.velocity.pixelsPerSecond.dy < 800 &&
            details.velocity.pixelsPerSecond.dy > -800) {
          if (_dragVideoPlayerYController!.value > 0.5) {
            _dragVideoPlayerYController!.forward();
          } else {
            _dragVideoPlayerYController!.reverse();
          }
        }
        if (details.velocity.pixelsPerSecond.dx < 800 &&
            details.velocity.pixelsPerSecond.dx > -800) {
          if (_dragVideoPlayerXController!.value > 0.5) {
            _dragVideoPlayerXController!.forward();
          } else {
            _dragVideoPlayerXController!.reverse();
          }
        }
        debugPrint('${_dragVideoPlayerXController!.value}');
      },
      child: widget.child,
    );
  }

  // SpringSimulation _springSimulation({
  //   required double start,
  //   required double end,
  // }) {
  //   return SpringSimulation(
  //     SpringDescription(mass: 1, stiffness: 500, damping: 20),
  //     start,
  //     end,
  //     0,
  //   );
  // }
}
