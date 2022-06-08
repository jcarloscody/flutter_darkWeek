import 'package:flutter/material.dart';

class AppConfigUI {
  AppConfigUI._();

  static const MaterialColor _materialColor = MaterialColor(0XFF006680, {
    50: Color(0XFF006680),
    100: Color(0XFF006680),
    200: Color(0XFF006680),
    300: Color(0XFF006680),
    400: Color(0XFF006680),
    500: Color(0XFF006680),
    600: Color(0XFF006680),
    700: Color(0XFF006680),
    800: Color(0XFF006680),
    900: Color(0XFF006680),
  });

  static final ThemeData themeData = ThemeData(
    primarySwatch: _materialColor,
    primaryColor: const Color(0XFF006680),
    primaryColorLight: const Color(0XFF219FFF),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      labelStyle: const TextStyle(color: Colors.grey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
