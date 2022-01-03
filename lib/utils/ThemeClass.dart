import 'package:flutter/material.dart';

import 'Constants.dart';

class ThemeClass{
  static ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.blue,
  primaryColor: Colors.white,
  brightness: Brightness.light,
  accentColor: Colors.black,
  accentIconTheme: IconThemeData(color: Colors.white),
  dividerColor: Colors.white54,
  scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Constants.clr_light_blue,
    )

  );

  /* Dark theme settings */
  static ThemeData darkTheme= ThemeData(
  primarySwatch: Colors.blue,
  primaryColor: Colors.black,
  brightness: Brightness.dark,
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black12,
  scaffoldBackgroundColor: Color(0xFF131313),
      appBarTheme: AppBarTheme(
        backgroundColor: Constants.colorPrimary,
      )
  );
}