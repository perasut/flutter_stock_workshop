import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() {
  return ThemeData(
    // fontFamily: 'kanit',
    textTheme: GoogleFonts.kanitTextTheme(),
    primaryColor: Colors.blue,
    accentColor: Colors.green,
    hintColor: Colors.blue,
    buttonColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.white
  );
}
