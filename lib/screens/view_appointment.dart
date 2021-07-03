import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/appointment.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

class ScreenViewAppointment extends  StatelessWidget{
  final int appointmentId;
  ScreenViewAppointment(this.appointmentId);

  Widget build(BuildContext context) {
   return Scaffold(
       resizeToAvoidBottomInset: false,
       body: _buildBody(context, appointmentId));
  }

  FutureBuilder<Response<Appointment>> _buildBody(BuildContext context, int id) {
    return FutureBuilder<Response<Appointment>>(
      future: Provider.of<PostApiService>(context).getAppointmentByd(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final Appointment posts = snapshot.data.body;
          return Center(child: Text('Something valuable'),);
        } else if(snapshot.hasError){
          return SomethingWrongHasHappened();
        }  else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

}