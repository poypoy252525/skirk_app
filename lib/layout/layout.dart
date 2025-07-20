import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/widgets/bottom_navigation_bar.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/video_player_pop_scope.dart';
import 'package:skirk_app/core/presentation/widgets/video_player_screen/video_player_screen.dart';

class Layout extends ConsumerStatefulWidget {
  const Layout({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LayoutState();
}

class _LayoutState extends ConsumerState<Layout> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerPopScope(
      root: true,
      child: Scaffold(
        extendBody: true,
        body: Stack(
          children: [
            widget.navigationShell,
            ValueListenableBuilder(
              valueListenable: showMinimizableScreen,
              builder: (context, value, child) {
                return value
                    ? Positioned.fill(child: VideoPlayerScreen())
                    : Container();
              },
            ),
          ],
        ),
        bottomNavigationBar: AnimatedBottomNavigationBar(
          navigationShell: widget.navigationShell,
        ),
      ),
    );
  }
}
