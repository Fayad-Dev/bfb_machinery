import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';
import '../radius.dart';

ThemeData kLightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor).copyWith(
    brightness: Brightness.light,
  ),
  scaffoldBackgroundColor: kScaffoldBackgroundColor,
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
      color: Colors.black,
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
    fillColor: kLightGrey,
    contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(kMainRadius),
      borderSide: BorderSide.none,
    ),
    hintStyle: const TextStyle(
      fontSize: 16,
      color: Colors.black38,
    ),
  ),
  iconTheme: IconThemeData(
    color: kIconColorGrey,
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      iconColor: MaterialStateProperty.all(kIconColorGrey),
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
      backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
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
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kMainRadius),
        ),
      ),
      padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 20)),
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
