import 'package:flutter/material.dart';

class DefaultColorScheme {
  static const Background = const Color(0xFFfdf1f4);
  static const Primary = const Color(0xFFeb8056);
  static const Secondary = const Color(0xFFb1f6e7);
  static const Tertiary = const Color(0xFF1793c4);

  static ColorScheme create() {
    return const ColorScheme(
        background: Background,
        onBackground: Background,
        surface: Background,
        onSurface: Background,
        brightness: Brightness.light,
        primary: Primary,
        onPrimary: Primary,
        secondary: Secondary,
        onSecondary: Secondary,
        tertiary: Tertiary,
        error: Colors.red,
        onError: Colors.redAccent);
  }
}
