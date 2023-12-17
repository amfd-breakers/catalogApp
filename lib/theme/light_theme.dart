import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color creamColor = Color(0xfff5f5f5);
Color bluishColor = Color(0xfff403b58);
Color cardColor = Colors.white;
Color scafoldColor = Color(0xfff5f5f5);
Color textColor = Colors.black;
ThemeData lightTheme = ThemeData(
  inputDecorationTheme: const InputDecorationTheme(
    errorStyle: TextStyle(color: Colors.red),
    labelStyle: TextStyle(color: Colors.black),
    hintStyle: TextStyle(
      color: Colors.black,
    ),
  ),
  brightness: Brightness.light,
  cardColor: cardColor,
  primaryColor: const Color.fromARGB(255, 74, 69, 99),
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: AppBarTheme(
    iconTheme: const IconThemeData(color: Colors.black),
    color: scafoldColor,
    elevation: 0.0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      textStyle: const TextStyle(color: Colors.white),
      foregroundColor: Colors.white,
      backgroundColor: Color(0xfff403b58),
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: bluishColor,
    foregroundColor: Colors.white,
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
