import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skirk_app/router/router.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData.light().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
          surfaceTintColor: Colors.transparent,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: ThemeData.light().scaffoldBackgroundColor,
        ),
        colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: Colors.black,
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: ThemeData.dark().scaffoldBackgroundColor,
          surfaceTintColor: Colors.transparent,
        ),
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: ThemeData.dark().scaffoldBackgroundColor,
        ),
        colorScheme: ThemeData.dark().colorScheme.copyWith(
          primary: Colors.white,
        ),
      ),
      routerConfig: router,
    );
  }
}
