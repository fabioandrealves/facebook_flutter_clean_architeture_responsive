import 'package:facebbok_clean_archteture_responsive/commons/navigation_screen.dart';
import 'package:facebbok_clean_archteture_responsive/core/utils/style/global_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Facebook',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            scaffoldBackgroundColor: GlobalColors.scaffold),
        home: const NavigationScreen());
  }
}
