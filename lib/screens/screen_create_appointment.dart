import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';

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
      body: Card(
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Appointment date',style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10.0,),
              Container(
                height: 100,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime(1969, 1, 1),
                  onDateTimeChanged: (DateTime newDateTime) {
                    // Do something
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(colorPrimary)),
            onPressed: () {
            },
            child: Text('Create appointment', style: TextStyle(color: Colors.white)),
          ),
        ),
        elevation: 0,
      ),
    );
  }

}