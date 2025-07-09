import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:skirk_app/core/constants.dart';
import 'package:skirk_app/core/providers/minimizable_animation_controller_provider.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<MinimizableAnimationControllerProvider>(
      context,
    );

    final offset = Tween<Offset>(
      begin: Offset.zero,
      end: Offset(0, bottomNavigationBarHeight),
    ).animate(notifier.controller);

    return AnimatedBuilder(
      animation: notifier.controller,
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
                filter: ImageFilter.blur(sigmaX: 25, sigmaY: 25),
                child: NavigationBar(
                  backgroundColor: Theme.of(
                    context,
                  ).scaffoldBackgroundColor.withValues(alpha: 0.8),
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
                      icon: Icon(Icons.person_outlined),
                      label: 'Profile',
                      selectedIcon: Icon(Icons.person),
                    ),
                    NavigationDestination(
                      icon: Icon(Icons.explore_outlined),
                      label: 'Experiment',
                      selectedIcon: Icon(Icons.explore),
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
