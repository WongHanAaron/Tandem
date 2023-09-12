import 'package:flutter/material.dart';

class DefaultThemeData {
  static const Background = Color.fromARGB(255, 248, 244, 241);
  static const Primary = Color.fromARGB(255, 73, 106, 152);
  static const Secondary = Color.fromARGB(255, 195, 192, 225);
  static const Tertiary = Color.fromARGB(255, 71, 141, 144);

  static ThemeData create() {
    return ThemeData(
        primaryColor: Primary,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Primary,
            primary: Primary,
            secondary: Secondary,
            tertiary: Tertiary,
            background: Background),
        backgroundColor: Background,
        scaffoldBackgroundColor: Background,
        secondaryHeaderColor: Secondary);
  }
}
