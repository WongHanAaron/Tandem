import 'package:flutter/material.dart';

class DefaultThemeData {
  static const Background = const Color(0xFFfdf1f4);
  static const Primary = const Color(0xFFeb8056);
  static const Secondary = const Color(0xFFb1f6e7);
  static const Tertiary = const Color(0xFF1793c4);

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
        secondaryHeaderColor: Secondary);
  }
}
