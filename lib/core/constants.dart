import 'package:flutter/material.dart';

final String anilistAPI = 'https://graphql.anilist.co';

final Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

final String skirkAPI = 'https://delflay-server.vercel.app';
// final String skirkAPI = 'http://192.168.100.145:3000';

final double bottomNavigationBarHeight = 55;

final ValueNotifier<bool> showMinimizableScreen = ValueNotifier<bool>(false);

final ValueNotifier<Offset> videoPlayerPosition = ValueNotifier(Offset.zero);

// final ValueNotifier<Matrix4> translation = ValueNotifier(
//   Matrix4.identity()..translate(0.0, 100),
// );

final ValueNotifier<bool> isMinimizeScreenDisposed = ValueNotifier(true);
