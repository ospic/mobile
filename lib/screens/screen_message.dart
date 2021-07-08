import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenMessage extends StatefulWidget{


  _ScreenMessageState createState() =>_ScreenMessageState();
}

class _ScreenMessageState  extends State<ScreenMessage>{
  late FirebaseMessaging messaging;
  @override
  void initState() {
    super.initState();
    messaging = FirebaseMessaging.instance;
    messaging.getToken().then((value) {
      print(value);
    });


    FirebaseMessaging.onMessage.listen((RemoteMessage event) {
      print("message recieved");
      print(event.notification!.toString());
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      print('Message clicked!');
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Message'),),
    );
  }

}