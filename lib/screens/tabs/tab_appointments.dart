
import 'package:chopper/chopper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/appointment_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/screens/view_consultation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';

class AppointmentsTab  extends StatefulWidget {

  @override
  _AppointmentsTabState createState()=>_AppointmentsTabState();
}

class _AppointmentsTabState extends State<AppointmentsTab> {
  ValueNotifier<bool> _notifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery
              .of(context)
              .size
              .width > 600) {
            isLargeScreen = true;
          } else {
            isLargeScreen = false;
          }
          return Container(
            padding: EdgeInsets.symmetric(vertical: 5.0),
            margin: EdgeInsets.symmetric(horizontal: 3.0),
            decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(10.0),
                  topRight: const Radius.circular(10.0),
                )),
            child: _buildBody(context),
          );
        });
  }


  FutureBuilder<Response<BuiltList<AppointmentInfo>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<AppointmentInfo>>>(
      future: Provider.of<PostApiService>(context).getAppointments(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final BuiltList<AppointmentInfo> appointments = snapshot.data.body;
          selectedValue = appointments[0].id;
          return appointments.length > 0 ? _buildNotifications(context, appointments) :  NothingFoundWarning();
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




  Widget _buildNotifications(BuildContext context, BuiltList<AppointmentInfo> ap) {
    return Row(
      children: [
        Expanded(
          flex: isLargeScreen ?  3 : 10,
          child: ListView.separated(
            itemCount: ap.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return  Container(
                padding: EdgeInsets.all(0.0),
                  child:
                  ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: ap[index].status == 'WAITING' ?  Colors.red[700]: Colors.green[100],
                      child: ap[index].status == 'WAITING' ? Icon(MdiIcons.bed, color: Colors.white,): Text(
                        ap[index].id.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold, color: ap[index].status == 'WAITING' ? Colors.white : Colors.green),
                      ),
                    ),
                    title: Text(ap[index].appointmentDate),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Status: " + ap[index].status ),
                        Text("Patient: " +ap[index].patientId .toString())
                      ],
                    ),
                    onTap: () {
                      if (isLargeScreen) {
                        selectedValue = ap[index].id;
                        print(selectedValue);
                        _notifier.value = !_notifier.value;
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenViewAppointment(ap[index].id);
                          },
                        ));
                      }
                    },
                  ));
            },
            separatorBuilder: (context, index){
              return  Container(
                  padding:  EdgeInsets.only(top: 1.0, bottom: 1.0),
                  color: Colors.grey, height: 1);
            },),
        ),
    Expanded(
    flex: isLargeScreen ? 7 : 0,
       child: ValueListenableBuilder(
            valueListenable: _notifier,
            builder: (BuildContext context, bool quoteReady, Widget child){
              return
                isLargeScreen
                    ?  ScreenViewAppointment(selectedValue) : Container();
            })
    )

      ],
    );
  }
}