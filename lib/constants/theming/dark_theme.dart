import 'package:bfb_machinery/constants/colors.dart';
import 'package:bfb_machinery/constants/radius.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData kDarkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor).copyWith(
    brightness: Brightness.dark,
  ),

  // useMaterial3: true,
  fontFamily: GoogleFonts.ptSans().fontFamily,

  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 16,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
    ),
    displaySmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      fontSize: 10,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
    ),
    bodyLarge: TextStyle(
      fontSize: 14,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    // fillColor: kLightGrey,
    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(kMainRadius),
      borderSide: BorderSide.none,
    ),
    hintStyle: const TextStyle(
      fontSize: 14,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all(Colors.white),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kMainRadius),
        ),
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kMainRadius),
        ),
      ),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      ),
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
    ),
  ),
  dialogTheme: DialogTheme(
    shape: OutlineInputBorder(
      borderRadius: BorderRadius.circular(kMainRadius),
      borderSide: BorderSide.none,
    ),
  ),
);
