import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration,  navigationPage);
  }

  Future<void>  navigationPage() async{
      SharedPreference sharedPref = new SharedPreference();
      bool n = await sharedPref.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString()) ?? false;
      if(n){
        print('Logged In');
        Navigator.of(context).pushReplacementNamed('/home');
        FirebaseMessaging.instance.getToken().then((value) => {
          print('token updated : $value'),
          _requestUpdateFCMToken(context, value)
        });
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
Future<void> _requestUpdateFCMToken(BuildContext context, String? tokenValue) async {
  TokenUpdate tokenUpdate = TokenUpdate.from(tokenValue!);
  Future<Response> response = Provider.of<PostApiService>(context, listen: false).updateFcmToken(tokenUpdate);
  response.then((value) => {
    if(value.isSuccessful){

    }
  });

}