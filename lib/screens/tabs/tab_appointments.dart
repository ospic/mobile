
import 'package:chopper/chopper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/appointment_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/screens/view_consultation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
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
                color: Colors.transparent,
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
          final BuiltList<AppointmentInfo>? appointments = snapshot.data?.body;
          selectedValue = appointments![0].id!;
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

    ThemeData _theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: ap.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return  Card(
                color: ap[index].status=='CANCELLED' ? Constants.clr_orange : _theme.primaryColor,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(30.5),
                          child: Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color:  ap[index].status=='CANCELLED' ? Colors.red[200] : Constants.clr_light_blue,
                              ),
                              child:
                              Image.asset('images/user_icon.png', height: 50.0, width: 50.0, fit: BoxFit.fitWidth,) )),
                      title: Text('Date: ${ap[index].appointmentDate!}', style: TextStyle(fontWeight: FontWeight.bold,),),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Status: '),
                                TextSpan(
                                  text: ap[index].status,
                                  style: TextStyle(fontWeight: FontWeight.bold, color: ap[index].status=='CANCELLED' ? Colors.red : null),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),
                      trailing: Icon(Icons.arrow_right_sharp,color: ap[index].status=='CANCELLED' ? Colors.red : null),
                      onTap: () {
                        if (isLargeScreen) {
                          selectedValue = ap[index].id!;
                          print(selectedValue);
                          _notifier.value = !_notifier.value;
                        } else {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ScreenViewAppointment(ap[index].id!);
                            },
                          ));
                        }
                      },
                    )),
              );
            },
            separatorBuilder: (context, index){
              return  Container(
                  padding:  EdgeInsets.only(top: 1.0, bottom: 1.0),
                  color: Colors.white70, height: 1);
            },),
        ),

      ],
    );
  }
}

