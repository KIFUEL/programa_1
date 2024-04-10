import 'package:aplicacion_final_1/screens/home/home_scree.dart';
import 'package:aplicacion_final_1/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() { 
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());}

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
