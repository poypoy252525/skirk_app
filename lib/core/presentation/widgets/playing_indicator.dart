import 'package:flutter/material.dart';

class PlayingIndicator extends StatelessWidget {
  const PlayingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        spacing: 2,
        children: [
          Bar(initialValue: 0.5),
          Bar(initialValue: 0.8),
          Bar(initialValue: 0.2),
        ],
      ),
    );
  }
}

class Bar extends StatefulWidget {
  const Bar({super.key, required this.initialValue});

  final double initialValue;

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation height;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );

    controller.value = widget.initialValue;

    height = Tween<double>(begin: 1, end: 8).animate(controller);

    controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Container(color: Colors.white, width: 3, height: height.value);
      },
    );
  }
}
