import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

Color colorPrimary = new Color.fromRGBO(47,68,84, 1);
Color colorPrimaryDark = new Color.fromRGBO(69, 83, 74, 1);
Color colorAccent = new Color.fromRGBO(218,224,239, 0.8);
Color textPrimaryColor = Colors.black87;

Color scaffoldBackgroundColor = new Color.fromRGBO(234, 234, 234, 1);

Color green1 = new Color.fromRGBO(234, 234, 234, 1.0);
Color green2 = new Color.fromRGBO(50, 115, 95, 1);
Color blue = HexColor("#3388FF");

Color gray1 = new Color.fromRGBO(222, 230, 232, 1);
Color gray2 = new Color.fromRGBO(191, 204, 212, 1);
Color gray3 = new Color.fromRGBO(99, 112, 118, 1);

Color colorOne = Colors.red;
Color colorTwo = Colors.red[300] as Color;
Color colorThree = Colors.red[100] as Color;

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


/** Light theme colors **/
Color md_theme_light_primary =  HexColor("#006C4F");
Color md_theme_light_onPrimary =  HexColor("#FFFFFF");
Color md_theme_light_primaryContainer =  HexColor("#85F8CC");
Color md_theme_light_onPrimaryContainer =  HexColor("#002115");
Color md_theme_light_secondary =  HexColor("#4C6358");
Color md_theme_light_onSecondary =  HexColor("#FFFFFF");
Color md_theme_light_secondaryContainer =  HexColor("#CFE9DB");
Color md_theme_light_onSecondaryContainer =  HexColor("#0A1F17");
Color md_theme_light_tertiary =  HexColor("#3F6374");
Color md_theme_light_onTertiary =  HexColor("#FFFFFF");
Color md_theme_light_tertiaryContainer =  HexColor("#C2E8FD");
Color md_theme_light_onTertiaryContainer =  HexColor("#001F2A");
Color md_theme_light_error =  HexColor("#BA1B1B");
Color md_theme_light_errorContainer =  HexColor("#FFDAD4");
Color md_theme_light_onError =  HexColor("#FFFFFF");
Color md_theme_light_onErrorContainer =  HexColor("#410001");
Color md_theme_light_background =  HexColor("#2C3C8C");
Color md_theme_light_onBackground =  HexColor("#191C1B");
Color md_theme_light_surface =  HexColor("#FAFDF9");
Color md_theme_light_onSurface =  HexColor("#191C1B");
Color md_theme_light_surfaceVariant =  HexColor("#DBE5DE");
Color md_theme_light_onSurfaceVariant =  HexColor("#404944");
Color md_theme_light_outline =  HexColor("#6F7973");
Color md_theme_light_inverseOnSurface =  HexColor("#EFF2EE");
Color md_theme_light_inverseSurface =  HexColor("#2E312F");
Color md_theme_light_primaryInverse =  HexColor("#67DBB1");

/** Dark theme colors **/
Color md_theme_dark_primary =  HexColor("#67DBB1");
Color md_theme_dark_onPrimary =  HexColor("#003827");
Color md_theme_dark_primaryContainer =  HexColor("#00513A");
Color md_theme_dark_onPrimaryContainer =  HexColor("#85F8CC");
Color md_theme_dark_secondary =  HexColor("#B3CCBF");
Color md_theme_dark_onSecondary =  HexColor("#1F352C");
Color md_theme_dark_secondaryContainer =  HexColor("#354B41");
Color md_theme_dark_onSecondaryContainer =  HexColor("#CFE9DB");
Color md_theme_dark_tertiary =  HexColor("#A6CCE0");
Color md_theme_dark_onTertiary =  HexColor("#0A3544");
Color md_theme_dark_tertiaryContainer =  HexColor("#264B5C");
Color md_theme_dark_onTertiaryContainer =  HexColor("#C2E8FD");
Color md_theme_dark_error =  HexColor("#FFB4A9");
Color md_theme_dark_errorContainer =  HexColor("#930006");
Color md_theme_dark_onError =  HexColor("#680003");
Color md_theme_dark_onErrorContainer =  HexColor("#FFDAD4");
Color md_theme_dark_background =  HexColor("#2C3C8C");
Color md_theme_dark_onBackground =  HexColor("#E1E3E0");
Color md_theme_dark_surface =  HexColor("#191C1B");
Color md_theme_dark_onSurface =  HexColor("#E1E3E0");
Color md_theme_dark_surfaceVariant =  HexColor("#404944");
Color md_theme_dark_onSurfaceVariant =  HexColor("#BFC9C2");
Color md_theme_dark_outline =  HexColor("#89938D");
Color md_theme_dark_inverseOnSurface =  HexColor("#191C1B");
Color md_theme_dark_inverseSurface =  HexColor("#E1E3E0");
Color md_theme_dark_primaryInverse =  HexColor("#006C4F");
Color seed =  HexColor("#0B5640");
Color error =  HexColor("#BA1B1B");
Color custom_0 =  HexColor("#2AB36D");


class Loginsty with Login, Signup {}

mixin Login {
  List data = [
    prefix0.TextStyle(),
  ];
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

mixin Signup {}

