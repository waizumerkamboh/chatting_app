import 'package:flutter/material.dart';

import 'colors.dart';

var lightTheme = ThemeData();
var darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    color: dContainerColor
  ),
  inputDecorationTheme: InputDecorationTheme(
    fillColor: dBackgroundColor,
    filled: true,
    border: UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10)
    )
  ),
  colorScheme: const ColorScheme.dark(
      primary: dPrimaryColor,
      onPrimary: dOnBackgroundColor,
      background: dBackgroundColor,
      onBackground: dOnBackgroundColor,
      primaryContainer: dContainerColor,
      onPrimaryContainer: dOnContainerColor,

  ),
      textTheme: const TextTheme(
            headlineLarge: TextStyle(
                  fontSize: 32,
                  color: dPrimaryColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w800,

            ),
            headlineMedium: TextStyle(
                  fontSize: 30,
                  color: dOnBackgroundColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,

            ),
            headlineSmall: TextStyle(
                  fontSize: 20,
                  color: dOnBackgroundColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,

            ),
            bodyLarge: TextStyle(
                  fontSize: 18,
                  color: dOnBackgroundColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,

            ),
            bodyMedium: TextStyle(
                  fontSize: 15,
                  color: dOnBackgroundColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,

            ),
            labelLarge: TextStyle(
                  fontSize: 15,
                  color: dOnContainerColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,

            ),
            labelMedium: TextStyle(
                  fontSize: 12,
                  color: dOnContainerColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w400,

            ),
            labelSmall: TextStyle(
                  fontSize: 10,
                  color: dOnContainerColor,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w300,

            ),
      )
);