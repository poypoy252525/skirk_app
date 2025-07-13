import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.navigationShell,
    required this.animationController,
  });

  final AnimationController animationController;
  final StatefulNavigationShell navigationShell;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final offset = Tween<Offset>(
      begin: Offset(
        0,
        bottomNavigationBarHeight + MediaQuery.of(context).padding.bottom,
      ),
      end: Offset.zero,
    ).animate(widget.animationController);

    return AnimatedBuilder(
      animation: widget.animationController,
      builder: (context, child) {
        return Transform.translate(
          offset: offset.value,
          child: Container(
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
                  selectedIndex: widget.navigationShell.currentIndex,
                  onDestinationSelected: widget.navigationShell.goBranch,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
