import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skirk_app/core/providers/minimizable_animation_controller_provider.dart';

class MinimizableScreen extends StatefulWidget {
  const MinimizableScreen({super.key});

  @override
  State<MinimizableScreen> createState() => _MinimizableScreenState();
}

class _MinimizableScreenState extends State<MinimizableScreen> {
  @override
  Widget build(BuildContext context) {
    final notifier = Provider.of<MinimizableAnimationControllerProvider>(
      context,
    );

    return AspectRatio(
      aspectRatio: 16 / 9,
      child: GestureDetector(
        onPanUpdate: (details) {
          debugPrint('hell oworld');
          notifier.controller.value += details.delta.dy / (740);
        },
        child: Container(color: Colors.black),
      ),
    );
  }
}
