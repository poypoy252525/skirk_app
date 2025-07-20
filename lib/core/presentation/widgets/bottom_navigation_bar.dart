import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/presentation/providers/minimize_video_player_controller/minimize_video_player_controller_provider.dart';

class AnimatedBottomNavigationBar extends ConsumerStatefulWidget {
  const AnimatedBottomNavigationBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState
    extends ConsumerState<AnimatedBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final minimizeVideoPlayerController = ref.watch(
      minimizeVideoPlayerControllerProvider,
    );
    if (minimizeVideoPlayerController == null) {
      return CustomBottomNavigationBar(navigationShell: widget.navigationShell);
    }
    final offset = Tween<Offset>(
      begin: Offset(
        0,
        bottomNavigationBarHeight + MediaQuery.of(context).padding.bottom,
      ),
      end: Offset.zero,
    ).animate(minimizeVideoPlayerController);

    return AnimatedBuilder(
      animation: minimizeVideoPlayerController,
      builder: (context, child) {
        return Transform.translate(
          offset: offset.value,
          child: CustomBottomNavigationBar(
            navigationShell: widget.navigationShell,
          ),
        );
      },
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.primary.withAlpha(30),
            width: 0.5,
          ),
        ),
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
          child: NavigationBar(
            backgroundColor: Theme.of(
              context,
            ).scaffoldBackgroundColor.withValues(alpha: 0.85),
            height: bottomNavigationBarHeight,
            indicatorColor: Colors.transparent,
            overlayColor: WidgetStateColor.resolveWith((states) {
              return Colors.transparent;
            }),
            labelPadding: EdgeInsets.all(0),
            destinations: [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                selectedIcon: Icon(Icons.home),
              ),
              NavigationDestination(
                icon: Icon(Icons.explore_outlined),
                label: 'Discover',
                selectedIcon: Icon(Icons.explore),
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outlined),
                label: 'Profile',
                selectedIcon: Icon(Icons.person),
              ),
            ],
            selectedIndex: navigationShell.currentIndex,
            onDestinationSelected: navigationShell.goBranch,
          ),
        ),
      ),
    );
  }
}
