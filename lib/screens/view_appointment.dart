import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/appointment.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

class ScreenViewAppointment extends  StatelessWidget{
  final int appointmentId;
  ScreenViewAppointment(this.appointmentId);

  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('View appointment $appointmentId',style: TextStyle(color: Constants.clr_blue),),
       elevation: 0,
       iconTheme: IconThemeData(
           color: Constants.clr_blue
       ),
       actions: [
     IconButton(
       icon: const Icon(Icons.edit),
     color: Colors.black54,
     onPressed: () {},
   ),
       ],
       backgroundColor: Constants.clr_light_blue,
     ),
       resizeToAvoidBottomInset: false,
       body: _buildBody(context, appointmentId));
  }

  FutureBuilder<Response<Appointment>> _buildBody(BuildContext context, int id) {
    return FutureBuilder<Response<Appointment>>(
      future: Provider.of<PostApiService>(context).getAppointmentByd(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final Appointment? appointment = snapshot.data?.body;
          return _updateAppointmentView(context, appointment);
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

  Widget _updateAppointmentView(BuildContext context, Appointment? appointment){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Card(
          margin: EdgeInsets.all(5.0),
          child: ListTile(
            subtitle: Center(child: Text('Appointment date', style: TextStyle(fontSize: 16.0),)),
            title: Center(child: Text(appointment!.appointment.appointmentDate!,  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Constants.clr_blue))),

          ),
        ),
        SizedBox(height: 34.0,),
        Center(child: Text('Physician'),),
        Card(
          child:Padding(
            padding: EdgeInsets.all(10.0),
            child:  ListTile(
              leading: CircleAvatar(
                radius: 35.0,
                backgroundColor: appointment!.staff!.isActive! ?  Colors.red[700]: Colors.green[100],
                child: appointment!.staff.isActive!  ? Icon(Icons.ac_unit, color: Colors.white,): Text(
                  appointment.staff.username!,
                  style: TextStyle(fontWeight: FontWeight.bold, color:  appointment.staff.isActive!  ? Colors.white : Colors.green),
                ),
              ),
              title:  Text(appointment.staff.fullName==null? appointment.staff.username! : appointment.staff.fullName!,style: TextStyle(fontWeight: FontWeight.bold), ),
              subtitle:  Text('Email ${appointment.staff.email}' ),
            ),
          )
        )
      ],
    );
  }
}