import 'package:flutter/material.dart';
import 'package:flutter_spotify/core/configs/theme/app_theme.dart';
import 'package:flutter_spotify/presentation/splash/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      title: 'Flutter Spotify',
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
