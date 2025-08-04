import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discover'),
        actionsPadding: EdgeInsets.only(right: 4),
        actions: [
          IconButton(
            onPressed: () {
              context.pushNamed('search');
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
