import 'package:flutter/material.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  final draggableController = DraggableScrollableController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover')),
      body: Padding(
        padding: const EdgeInsets.only(bottom: kBottomNavigationBarHeight),
        child: Center(child: Text('Coming soon...')),
      ),
    );
  }
}
