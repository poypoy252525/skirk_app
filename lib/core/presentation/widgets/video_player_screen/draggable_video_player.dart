import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/custom_video_player.dart';

class DraggableVideoPlayer extends ConsumerStatefulWidget {
  const DraggableVideoPlayer({
    super.key,
    required this.constraints,
    required this.minimizeVideoPlayerController,
    required this.moveVideoPlayerController,
  });

  final BoxConstraints constraints;
  final AnimationController minimizeVideoPlayerController;
  final AnimationController moveVideoPlayerController;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DraggableVideoPlayerState();
}

class _DraggableVideoPlayerState extends ConsumerState<DraggableVideoPlayer> {
  bool isMinimized = false;
  Offset freeDragOffset = Offset.zero;
  Offset position = Offset.zero;
  late Offset endPosition;
  late Tween<Offset> positionTween;
  late double maxHeight;
  late double height;
  late double width;
  late double minimizedScale;
  Tween<Offset>? snapPosition;
  Animation<Offset>? snapAnimation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    minimizedScale = 0.55;
    final aspectRatio = 16 / 9;
    width = MediaQuery.of(context).size.width;
    height = width / aspectRatio;

    maxHeight =
        widget.constraints.maxHeight -
        height * minimizedScale -
        MediaQuery.of(context).padding.bottom -
        MediaQuery.of(context).padding.top -
        8;

    endPosition = Offset(8, maxHeight);
    positionTween = Tween<Offset>(begin: Offset.zero, end: endPosition);

    widget.moveVideoPlayerController.addStatusListener((status) {
      if (status.isCompleted) {
        freeDragOffset = Offset.zero;
        positionTween = Tween<Offset>(
          begin: Offset.zero,
          end: snapAnimation?.value,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final minimizeVideoPlayerController = widget.minimizeVideoPlayerController;
    final curve = CurvedAnimation(
      parent: minimizeVideoPlayerController,
      curve: Curves.easeInCubic,
    );
    final scaleTween = Tween<double>(begin: 1, end: minimizedScale);
    final scale = scaleTween.animate(curve);

    if (!widget.moveVideoPlayerController.isAnimating) {
      position = positionTween.animate(curve).value + freeDragOffset;
    }

    final borderRadius = Tween<double>(begin: 0, end: 8).animate(curve);

    return Positioned(
      top: position.dy,
      right: position.dx,
      child: SafeArea(
        bottom: false,
        child: GestureDetector(
          onTap: () {
            setState(() {
              freeDragOffset = Offset.zero;
              endPosition = position;
            });
            minimizeVideoPlayerController.reverse();
          },
          onPanStart: (details) {
            // return;
            isMinimized = minimizeVideoPlayerController.isCompleted;
            // widget.moveVideoPlayerController.reset();
          },
          onPanUpdate: (details) {
            // return;
            if (!isMinimized) {
              minimizeVideoPlayerController.value +=
                  details.delta.dy / maxHeight;
            } else {
              // do the move thing
              setState(() {
                freeDragOffset += Offset(-details.delta.dx, details.delta.dy);
              });
            }
          },
          onPanEnd: (details) {
            // return;
            if (!isMinimized) {
              if (details.velocity.pixelsPerSecond.dy > 1500) {
                minimizeVideoPlayerController.forward();
              } else {
                if (minimizeVideoPlayerController.value > 0.5) {
                  minimizeVideoPlayerController.forward();
                } else {
                  minimizeVideoPlayerController.reverse();
                }
              }
            } else {
              final snap = _getClosestSnapPosition(position);
              snapPosition = Tween(begin: position, end: snap);
              snapAnimation = snapPosition!.animate(
                CurvedAnimation(
                  parent: widget.moveVideoPlayerController,
                  curve: Curves.easeOutCubic,
                ),
              );

              widget.moveVideoPlayerController.removeListener(_updateState);

              widget.moveVideoPlayerController
                ..reset()
                ..forward();

              widget.moveVideoPlayerController.addListener(_updateState);
              return;
            }
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius.value),
              boxShadow: [
                if (minimizeVideoPlayerController.isCompleted)
                  BoxShadow(
                    offset: Offset(0, 0),
                    color: Colors.black.withValues(alpha: 0.4),
                    blurRadius: 2,
                    spreadRadius: 1,
                  ),
              ],
            ),
            width: width * scale.value,
            height: height * scale.value,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(borderRadius.value),
              clipBehavior: !minimizeVideoPlayerController.isDismissed
                  ? Clip.hardEdge
                  : Clip.none,
              child: AbsorbPointer(
                absorbing: false,
                child: const CustomVideoPlayer(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Offset> _getSnapPositions() {
    const padding = 8.0;
    Size size = MediaQuery.sizeOf(context);

    final double left = size.width - width * minimizedScale - padding;
    final double bottom = maxHeight;

    final positions = [
      Offset(left, padding),
      Offset(padding, padding),
      Offset(padding, bottom),
      Offset(left, bottom),
    ];

    return positions;
  }

  Offset _getClosestSnapPosition(Offset currentPosition) {
    List<Offset> positions = _getSnapPositions();

    positions.sort(
      (a, b) => (a - currentPosition).distance.compareTo(
        (b - currentPosition).distance,
      ),
    );

    return positions.first;
  }

  void _updateState() {
    setState(() {
      position = snapAnimation!.value;
    });
  }
}
