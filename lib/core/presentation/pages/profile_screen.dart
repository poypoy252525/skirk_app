import 'package:flutter/material.dart';
import 'package:skirk_app/core/constants.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Padding(
        padding: EdgeInsets.only(bottom: bottomNavigationBarHeight),
        child: Center(child: Text('Profile screen')),
      ),
    );
  }
}
