import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/presentation/pages/discover_screen.dart';
import 'package:skirk_app/core/presentation/pages/home_screen.dart';
import 'package:skirk_app/core/presentation/pages/media_details_screen.dart';
import 'package:skirk_app/core/presentation/pages/search_screen.dart';
import 'package:skirk_app/layout/layout.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/home',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          Layout(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'home',
              path: '/home',
              builder: (context, state) => HomeScreen(),
            ),
            GoRoute(
              path: '/media/:mediaId',
              name: 'media_details',
              builder: (context, state) =>
                  MediaDetailsScreen(mediaId: state.pathParameters['mediaId']!),
            ),
            GoRoute(
              path: '/search',
              name: 'search',
              builder: (context, state) {
                return SearchScreen();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'experiment',
              path: '/experiment',
              builder: (context, state) => DiscoverScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'profile',
              path: '/profile',
              builder: (context, state) => Scaffold(
                appBar: AppBar(title: Text('Profile')),
                body: Padding(
                  padding: const EdgeInsets.only(
                    bottom: kBottomNavigationBarHeight,
                  ),
                  child: Center(child: Text('Profile screen')),
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
