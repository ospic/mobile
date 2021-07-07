import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/appointment.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

class ScreenViewAppointment extends StatefulWidget {
  final int appointmentId;
  ScreenViewAppointment(this.appointmentId);

  _ScreenViewAppointmentState createState() => _ScreenViewAppointmentState();
}
class _ScreenViewAppointmentState extends State<ScreenViewAppointment>{
  var horizontalPadding = 30.0;
  var verticalPadding = 15.0;
  var radiusCircle = 30.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.clr_light_blue,
      child: _buildBody(context, widget.appointmentId),
    );
  }


  FutureBuilder<Response<Appointment>> _buildBody(BuildContext context, int id) {
    return FutureBuilder<Response<Appointment>>(
      future: Provider.of<PostApiService>(context).getAppointmentByd(id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final Appointment? appointment = snapshot.data?.body;

          return _updateAppointmentHeader(context, appointment);
        } else if (snapshot.hasError) {
          return SomethingWrongHasHappened();
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _updateAppointmentHeader(BuildContext context, Appointment? appointment){
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180.0,
            collapsedHeight: 180.0,
            primary: true,
            floating: true,
            pinned: false,
            automaticallyImplyLeading: true,
            backgroundColor: Constants.clr_blue,
            foregroundColor: Colors.white,
            title: Text('Appointment request', style: TextStyle(fontWeight: FontWeight.w200),),
            elevation: 0.0,
            flexibleSpace: FlexibleSpaceBar(
              title:  Text('${appointment!.appointment.appointmentDate}',style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50.0), ),
              stretchModes: <StretchMode>[
                StretchMode.blurBackground
              ],
            ),

            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(80))),

          ),
          SliverToBoxAdapter(
            child: _updateAppointmentView(context, appointment),
          ),
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child:  Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
                visible: appointment.appointment.status == 'WAITING',
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Constants.clr_light_blue),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding)),
                  elevation: MaterialStateProperty.all(0.0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(radiusCircle))))),
              onPressed: () async {
                    _requestReschedulingOfAppointment(context, appointment.appointment.id);
              },
              child: Text('UN-SCHEDULE', style: TextStyle(color: Constants.clr_blue)),
            )),
            Visibility(
                visible: appointment.appointment.status == 'WAITING',
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Constants.clr_blue),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal: horizontalPadding)),
                      elevation: MaterialStateProperty.all(0.0),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(radiusCircle))))),
                  onPressed: () async {},
                  child: Text('EDIT', style: TextStyle(color: Colors.white)),
                )),
            Visibility(
              visible: appointment.appointment.status == 'CANCELLED',
              child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Constants.clr_red),
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: verticalPadding, horizontal:  horizontalPadding)),
                  elevation: MaterialStateProperty.all(0.0),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all( Radius.circular(radiusCircle))))),
              onPressed: () async {
                _requestDeletionOfAppointment(context, appointment.appointment.id);
              },
              child: Text('DELETE', style: TextStyle(color: Colors.white)),
            ),),

          ],),
        elevation: 0,
      ),
    );
  }

  Widget _updateAppointmentView(BuildContext context, Appointment? appointment) {

    return Container(
        margin: EdgeInsets.symmetric(horizontal: 3.0),
        decoration: new BoxDecoration(
            color: Colors.white, borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(-40.0),
          topRight: const Radius.circular(20.0),)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 20.0,
                backgroundColor: appointment!.staff.isActive! ? Constants.clr_blue : Colors.green[100],
                child: appointment.staff.isActive! ? Icon(
                  Icons.ac_unit, color: Colors.white,) : Text(appointment.staff.username!, style: TextStyle(fontWeight: FontWeight.bold, color: appointment.staff.isActive! ? Colors.white : Colors.green),
                ),
              ),
              title: Text(appointment.staff.fullName == null ? appointment.staff.username! : appointment.staff.fullName!, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24.0, color: Constants.clr_blue),),
              subtitle: Text('Email ${appointment.staff.email}'),
            ),
          ],
        ));
  }
}

Future<void> _requestDeletionOfAppointment(BuildContext context, int? appointmentId) async {
  Future<Response> response = Provider.of<PostApiService>(context, listen: false).deleteAppointmentByd(appointmentId!);
  response.then((value) => {
    Navigator.of(context).pop(),
    if(value.statusCode == 200){
      Navigator.of(context).pop()
    }
  });

}


Future<void> _requestReschedulingOfAppointment(BuildContext context, int? appointmentId) async {
  Future<Response> response = Provider.of<PostApiService>(context, listen: false).unScheduleAppointmentById(appointmentId!);
  response.then((value) => {
    Navigator.of(context).pop(),
    if(value.statusCode == 200){
      print(value.statusCode),
      Navigator.of(context).pop()
    }
  });

}