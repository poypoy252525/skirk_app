import 'package:flutter/material.dart';

final String anilistAPI = 'https://graphql.anilist.co';

final Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Accept': 'application/json',
};

final String skirkAPI = 'https://delflay-server.vercel.app';

final double bottomNavigationBarHeight = 55;

final ValueNotifier<bool> showMinimizableScreen = ValueNotifier<bool>(false);
