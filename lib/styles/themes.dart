import 'package:flutter/material.dart';
import 'colors.dart';

final ThemeData mainTheme = ThemeData(
  colorScheme: colorScheme,
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(1000)),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: ButtonStyle(
      textStyle: WidgetStatePropertyAll(TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      )),
    ),
  ),
  textTheme: TextTheme(
      displayMedium:
          TextStyle(fontSize: 64, height: 1, fontFamily: "Pirata One"),
      headlineMedium: TextStyle(fontSize: 48, height: 1),
      labelLarge: TextStyle(fontSize: 100, height: 1),
  ),
  extensions: []
);
