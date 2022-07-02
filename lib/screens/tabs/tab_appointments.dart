
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
  late ThemeData _theme;

  @override
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
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
            color: _theme.appBarTheme.backgroundColor,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              margin: EdgeInsets.symmetric(horizontal: 3.0),
              decoration: new BoxDecoration(
                  color: _theme.appBarTheme.backgroundColor,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(10.0),
                    topRight: const Radius.circular(10.0),
                  )),
              child: _buildBody(context),
            ),
          );
        });
  }


  FutureBuilder<Response<BuiltList<AppointmentInfo>>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<BuiltList<AppointmentInfo>>>(
      future: Provider.of<PostApiService>(context).getAppointments(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData && snapshot.data!.statusCode == 200) {
          final BuiltList<AppointmentInfo>? appointments = snapshot.data?.body;
          selectedValue = appointments![0].id!;
          return appointments.length > 0 ? _buildNotifications(context, appointments) :  NothingFoundWarning();
        } else if(snapshot.data!.statusCode != 200){
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
          child: ListView.separated(
            itemCount: ap.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return  Card(
                color: _theme.appBarTheme.foregroundColor,
                child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5.0),
                    child: ListTile(
                      leading: CircleAvatar(
                          radius: 20,
                          backgroundColor:  ap[index].status == 'REJECTED' ? Colors.red[700] : ap[index].status == 'CANCELLED' ? Colors.red[70] : ap[index].status == 'ACCEPTED' ? Colors.green : colorPrimary,
                          child: Image.asset('images/user_icon.png', height: 30.0, width: 30.0, fit: BoxFit.fitWidth, )
                      ),
                      title: Text('Date: ${ap[index].appointmentDate!}', style: _theme.textTheme.headline4,),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Status: ',style: _theme.textTheme.headline4,),
                                TextSpan(
                                  text: ap[index].status,
                                  style: TextStyle( color: ap[index].status=='CANCELLED' ? Colors.red : null),
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
                  padding:  EdgeInsets.symmetric(vertical: 0.0),
                  color: Colors.transparent, height: 0);
            },),
        ),

      ],
    );
  }
}

