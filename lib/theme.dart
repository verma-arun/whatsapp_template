import 'package:flutter/material.dart';

ThemeData buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: whatsAppGreen,
  );
}

Color whatsAppGreen = const Color.fromRGBO(18, 140, 126, 1.0);
Color whatsAppGreenLight = const Color.fromRGBO(37, 211, 102, 1.0);
Color fadedBlack = Colors.black.withOpacity(0.6);
Color fadedBlue = Colors.blue.withOpacity(0.6);
