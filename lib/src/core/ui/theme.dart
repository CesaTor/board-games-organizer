import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blue,
    brightness: Brightness.dark,
  ),
  appBarTheme: const AppBarTheme(centerTitle: false),
  textTheme: GoogleFonts.robotoTextTheme().apply(
    displayColor: Colors.white,
    decorationColor: Colors.white,
    bodyColor: Colors.white,
  ),
);
