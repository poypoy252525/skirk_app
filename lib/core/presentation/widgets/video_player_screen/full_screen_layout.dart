import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FullScreenLayout extends ConsumerStatefulWidget {
  const FullScreenLayout({
    super.key,
    required this.animation,
    required this.chewieControllerProvider,
    required this.context,
    required this.secondaryAnimation,
  });

  final ChewieControllerProvider chewieControllerProvider;
  final Animation<double> animation;
  final Animation<double> secondaryAnimation;
  final BuildContext context;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FullScreenLayoutState();
}

class _FullScreenLayoutState extends ConsumerState<FullScreenLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      extendBody: true,
      body: Stack(
        children: [
          // AnimatedOverlay(),
          Positioned.fill(child: widget.chewieControllerProvider),
        ],
      ),
    );
  }
}

class AnimatedOverlay extends StatelessWidget {
  const AnimatedOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('hello');
      },
      child: AnimatedOpacity(
        opacity: 1,
        duration: Duration(milliseconds: 200),
        child: Container(color: Colors.black.withValues(alpha: 0.6)),
      ),
    );
  }
}
