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
  backgroundColor: Constants.clr_light_blue,
  scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: Constants.clr_light_blue,
      foregroundColor: Colors.white,
      actionsIconTheme: IconThemeData(color: Constants.clr_blue),
    ),
  textTheme: TextTheme(
     headline1: TextStyle(color: Constants.clr_blue, fontSize: 25.0,fontWeight: FontWeight.bold),
     headline2: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold,fontSize: 16.0),
     headline3: TextStyle(color: Colors.black,fontSize: 16.0),
     headline4: TextStyle( color: Colors.black, fontSize: 12.0)
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Constants.colorPrimary,
        unselectedIconTheme: new IconThemeData(color: Colors.blueGrey),
        selectedIconTheme: new IconThemeData(color: Constants.clr_blue,),
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Constants.clr_blue,
      ),
      tabBarTheme: TabBarTheme(
        unselectedLabelColor: Colors.black54,
        labelColor: Constants.clr_blue,
      ),
      iconTheme: IconThemeData(
          color: Constants.clr_blue
      )

  );

  /* Dark theme settings */
  static ThemeData darkTheme= ThemeData(
  primarySwatch: Colors.blue,
  primaryColor: Constants.clr_light_blue,
  brightness: Brightness.dark,
  accentColor: Colors.white,
  accentIconTheme: IconThemeData(color: Colors.black),
  dividerColor: Colors.black,
  scaffoldBackgroundColor: Constants.clr_light_blue,
  backgroundColor: Constants.clr_light_blue,
  appBarTheme: AppBarTheme(
     backgroundColor: Constants.colorPrimary,
    foregroundColor: Colors.black54,
    actionsIconTheme: IconThemeData(color: Colors.white),
  ),
    textTheme: TextTheme(
      headline1: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold),
        headline2: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16.0),
        headline3: TextStyle(color: Colors.white,fontSize: 16.0),
      headline4: TextStyle( color: Colors.white, fontSize: 12.0)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Constants.colorPrimary,
      unselectedIconTheme: new IconThemeData(color: Colors.blueGrey),
      selectedIconTheme: new IconThemeData(color: Colors.white,),
      unselectedItemColor: Colors.blueGrey,
      selectedItemColor: Colors.white,
    ),
    tabBarTheme: TabBarTheme(
      unselectedLabelColor: Colors.white70,
      labelColor: Colors.white,
    ),
    iconTheme: IconThemeData(
      color: Colors.white
    )
  );
}