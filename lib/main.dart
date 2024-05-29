import 'package:flutter/material.dart';
import 'package:widges_app/config/theme/app_them.dart';
import 'package:widges_app/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme( selectedColor: 5).getTheme(),
      home: const HomeScreen()
    );
  }
}
