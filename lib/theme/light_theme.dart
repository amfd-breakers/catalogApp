import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Colors.deepPurple;
Color backgroundColor = Colors.white;
Color textColor = Colors.black;
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.lato().fontFamily,
  appBarTheme: AppBarTheme(
    color: primaryColor,
    toolbarHeight: 90,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: backgroundColor,
      backgroundColor: primaryColor,
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 20,
      color: textColor,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontSize: 18,
      color: textColor,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: TextStyle(
      fontSize: 12,
      color: textColor,
      fontWeight: FontWeight.bold,
    ),
    titleSmall: TextStyle(
      fontSize: 8,
      color: textColor,
      fontWeight: FontWeight.bold,
    ),
  ),
);
