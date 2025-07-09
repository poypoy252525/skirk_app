import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:skirk_app/core/providers/minimizable_animation_controller_provider.dart';
import 'package:skirk_app/core/widgets/bottom_navigation_bar.dart';

class Layout extends StatefulWidget {
  const Layout({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) =>
          MinimizableAnimationControllerProvider(controller: _controller),
      child: Scaffold(
        extendBody: true,
        body: Stack(children: [widget.navigationShell]),
        bottomNavigationBar: CustomBottomNavigationBar(
          navigationShell: widget.navigationShell,
        ),
      ),
    );
  }
}
