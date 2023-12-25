import 'package:flutter/material.dart';
import 'package:redid/src/styles/light_color.dart';

class AppTheme {
  const AppTheme();
  static ThemeData lightTheme = ThemeData(
      primaryColor: LightColor.navyBlue1,
      cardTheme: const CardTheme(color: LightColor.navyBlue2),
      textTheme: const TextTheme(headlineMedium: TextStyle(color: LightColor.black)),
      iconTheme: const IconThemeData(color: LightColor.navyBlue2),
      dividerColor: LightColor.lightGrey,
      primaryTextTheme: const TextTheme(
          bodyMedium: TextStyle(color: LightColor.titleTextColor)), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(background: LightColor.background), bottomAppBarTheme: const BottomAppBarTheme(color: LightColor.background));

  static TextStyle titleStyle =
      const TextStyle(color: LightColor.titleTextColor, fontSize: 16);
  static TextStyle subTitleStyle =
      const TextStyle(color: LightColor.subTitleTextColor, fontSize: 12);

  static TextStyle h1Style =
      const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  static TextStyle h2Style = const TextStyle(fontSize: 22);
  static TextStyle h3Style = const TextStyle(fontSize: 20);
  static TextStyle h4Style = const TextStyle(fontSize: 18);
  static TextStyle h5Style = const TextStyle(fontSize: 16);
  static TextStyle h6Style = const TextStyle(fontSize: 14);
}
