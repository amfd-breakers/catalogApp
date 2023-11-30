import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Colors.deepPurple;

Color scafoldColor = Colors.white;
Color textColor = Colors.black;
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: textColor),
    color: scafoldColor,
    elevation: 0.0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: scafoldColor,
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
    bodySmall: TextStyle(
      fontSize: 16,
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
