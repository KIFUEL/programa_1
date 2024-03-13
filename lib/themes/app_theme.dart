import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromRGBO(89, 114, 144, 1);
  static const Color secondary = Color.fromRGBO(240, 182, 44, 1);

  static final ThemeData incialTheme = ThemeData.light().copyWith(
    // textTheme: const TextTheme(
    //   bodyLarge: TextStyle(
    //     fontFamily: 'Roboto',
    //   ),
    // ),
    //color primario
    primaryColor: primary,
    //appbar theam
    appBarTheme: const AppBarTheme(color: primary, elevation: 0),
    //textButton theme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)),
    //flaotin button theme
    floatingActionButtonTheme:
        const FloatingActionButtonThemeData(backgroundColor: primary),

    //elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: primary,
            fixedSize: const Size(20, 40),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            elevation: 0)),
    //decoracion del text field
    inputDecorationTheme: const InputDecorationTheme(
        iconColor: primary,
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10))),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(10)))),
    //botton navigation bar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: primary, selectedItemColor: secondary),
    //font

    //final
  );
}
