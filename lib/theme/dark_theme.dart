import 'package:flutter/material.dart';

Color primaryColor = Colors.black;
Color textColor = Colors.white;
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: primaryColor,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    toolbarHeight: 60,
    //   color: primaryColor,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.black,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
    bodySmall: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
    titleLarge: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
    titleSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: textColor,
    ),
  ),
  // switchTheme: SwitchThemeData(
  // //   thumbColor: MaterialStateProperty.all(Colors.black),
  // //   trackColor: MaterialStateProperty.all(Colors.white),
  // // ),

  // inputDecorationTheme: const InputDecorationTheme(
  //   border: OutlineInputBorder(borderRadius: BorderRadius.vertical())

  // )
);
