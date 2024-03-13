import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(89, 114, 144, 1);
  static const Color secondary = Color.fromRGBO(240, 182, 44, 1);

  static final ThemeData incialTheme = ThemeData.from(
    colorScheme: ColorScheme.fromSeed(
        seedColor: secondary, brightness: Brightness.light, primary: primary),
  );
}
