import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:skirk_app/core/providers/fade_animation_provider/fade_animation_provider.dart';
import 'package:skirk_app/core/providers/minimize_animation_controller/minimize_animation_controller_provider.dart';
import 'package:skirk_app/core/widgets/bottom_navigation_bar.dart';
import 'package:skirk_app/core/widgets/minimizable_screen.dart';

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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final minimizeController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 300),
      );

      final fadeController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300),
      );

      ref.read(fadeAnimationProvider.notifier).set(fadeController);

      ref
          .read(minimizeAnimationControllerProvider.notifier)
          .set(minimizeController);
    });
  }

  @override
  void dispose() {
    ref.read(minimizeAnimationControllerProvider.notifier).dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(minimizeAnimationControllerProvider);
    if (controller == null) return SizedBox();
    return Scaffold(
      extendBody: true,
      body: Stack(children: [widget.navigationShell, MinimizableScreen()]),
      bottomNavigationBar: CustomBottomNavigationBar(
        animationController: controller,
        navigationShell: widget.navigationShell,
      ),
    );
  }
}
