import 'dart:async';
import 'dart:io';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/sharedpreference.dart';


import 'colors.dart';


class Utils {
  static Future<bool> checkConnection() async {
    ConnectivityResult connectivityResult =
    await (Connectivity().checkConnectivity());
    if ((connectivityResult == ConnectivityResult.mobile) ||
        (connectivityResult == ConnectivityResult.wifi)) {
      return true;
    } else {
      return false;
    }
  }

  
  static bool? isAndroidPlatform(){
      if (Platform.isAndroid) {
        return true;
        // Android-specific code
      } else if (Platform.isIOS) {
        // iOS-specific code
        return false;
      }
  }



  static void showOkCancelAlert(
      BuildContext context, String title, String text, VoidCallback onPressed) {
    var alert = AlertDialog(
      title: Text(title),
      content: Container(
        child: Row(
          children: <Widget>[Text(text)],
        ),
      ),
      actions: <Widget>[
        TextButton(
            onPressed: onPressed,
            child: Text(
              "OK",
              style: TextStyle(color: Colors.black87),
            )),
        TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ))
      ],
    );

    showDialog(
        context: context,
        builder: (_) {
          return alert;
        });
  }
  static InputBorder roundedInputBorder(){
    return OutlineInputBorder(
      borderSide: BorderSide(color: colorPrimary, width: 1.0),
      borderRadius: BorderRadius.circular(50.0),
    );
  }
  static Future<int?> getPatientId() async{
    SharedPreference sp = new SharedPreference();
    return sp.getIntValuesSF(enumKey.PATIENT_ID.toString());
  }
  static RoundedRectangleBorder cardShapeRound() {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0));
  }
  static ButtonStyle coloredButtonStyle(Color color) {
    return ButtonStyle(
        padding:
        MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 15.0)),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 30)),
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.5)),
            side: BorderSide(color: color))),
        elevation: MaterialStateProperty.all(0.0));
  }


  static int getColorHexFromStr(String colorStr)
  {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }


}