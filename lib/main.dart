import 'package:flutter/material.dart';
import 'package:splash/screen/splash_screen.dart';

import 'customs/app_themes_color.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ko",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
