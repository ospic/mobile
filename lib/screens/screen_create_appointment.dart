import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/Constants.dart';

class ScreenCreateAppointment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Create appointment', style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold),),
        iconTheme: IconThemeData(
          color: Constants.clr_blue
        ),
        backgroundColor: Constants.clr_light_blue,
      ),
      body: Center(child: Text('Create appointment'),),
    );
  }

}