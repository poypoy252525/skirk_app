import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Layout extends StatelessWidget {
  const Layout({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.primary.withAlpha(30),
              width: 0.5,
            ),
          ),
        ),
        child: NavigationBar(
          height: 55,
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
          ],
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: navigationShell.goBranch,
        ),
      ),
    );
  }
}
