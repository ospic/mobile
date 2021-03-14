import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

Color colorPrimary = new Color.fromRGBO(137, 174, 138, 1);
Color colorPrimaryDark = new Color.fromRGBO(69, 83, 74, 1);
Color colorAccent = new Color.fromRGBO(38, 0, 64, 0.8);
Color textPrimaryColor = Colors.black87;

Color green1 = new Color.fromRGBO(132, 189, 58, 1.0);
Color green2 = new Color.fromRGBO(50, 115, 95, 1);
Color blue = new Color.fromRGBO(12, 43, 61, 1);

Color gray1 = new Color.fromRGBO(222, 230, 232, 1);
Color gray2 = new Color.fromRGBO(191, 204, 212, 1);
Color gray3 = new Color.fromRGBO(99, 112, 118, 1);

Color colorOne = Colors.red;
Color colorTwo = Colors.red[300];
Color colorThree = Colors.red[100];

final appTheme = ThemeData(
  primarySwatch: Colors.red,
);
//textColors
Color textPrimaryLightColor = Colors.white;
Color textPrimaryDarkColor = Colors.black;
Color textSecondaryLightColor = Colors.black87;
Color textSecondary54 = Colors.black54;
Color textSecondaryDarkColor = Colors.blue;
Color hintTextColor = Colors.white30;
Color bucketDialogueUserColor = Colors.red;
Color disabledTextColour = Colors.black54;
Color placeHolderColor = Colors.black26;
Color dividerColor = Colors.black26;

class Loginsty with Login, Signup {}

mixin Login {
  List data = [
    prefix0.TextStyle(),
  ];
}

mixin Signup {}
