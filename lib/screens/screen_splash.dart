import 'dart:async';

import 'package:mobile/utils/colors.dart';
import 'package:mobile/utils/index.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 0);
    return new Timer(_duration,  navigationPage);
  }

  Future<void>  navigationPage() async{
      SharedPreference sharedPref = new SharedPreference();
      bool n = await sharedPref.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString()) ?? false;
      if(n){
        print('Logged In');
        Navigator.of(context).pushReplacementNamed('/home');
      }else{
        print('Not Logged In');
        Navigator.of(context).pushReplacementNamed('/login');
      }
 
    
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor:colorPrimary,
      body: new Center(
        child: new Image.asset(
          'images/icon.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
}
