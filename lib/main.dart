import 'package:flutter/material.dart';
import 'package:programa_1/themes/app_theme.dart';

import 'screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'User',
        initialRoute: 'home',
        routes: {'home': (_) => const HomeScreen()},
        theme: AppTheme.incialTheme);
  }
}
