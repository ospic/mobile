
import 'package:chopper/chopper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/consultation.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/screens/view_consultation.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';

class Consultations  extends StatefulWidget {

  @override
  _MasterListTabState createState()=>_MasterListTabState();
}

class _MasterListTabState extends State<Consultations> {
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
            child: _buildBody(context),
          );
        });
  }


  FutureBuilder<Response<BuiltList<Consultation>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<Consultation>>>(
      future: Provider.of<PostApiService>(context).getUserConsultations(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final BuiltList<Consultation> consultation = snapshot.data.body;
          selectedValue = consultation[0].id;
          return consultation.length > 0 ? _buildNotifications(
              context, consultation.reversed.toBuiltList()) : Center(
            child: Text("No consultation found"),);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }




  Widget _buildNotifications(BuildContext context, BuiltList<Consultation> cs) {
    return Row(
      children: [
        Expanded(
          flex: isLargeScreen ?  3 : 10,
          child: ListView.separated(
            itemCount: cs.length,
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(0.0),
            physics: const AlwaysScrollableScrollPhysics(),

            itemBuilder: (context, index) {
              return  Container(
                padding: EdgeInsets.all(0.0),
                  child: isLargeScreen ?
                  ListTile(
                    dense: true,
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundColor: cs[index].isAdmitted ?  Colors.red[700]: Colors.green[100],
                      child: cs[index].isAdmitted ? Icon(MdiIcons.bed, color: Colors.white,): Text(
                        cs[index].id.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold, color: cs[index].isActive ? Colors.white : Colors.green),
                      ),
                    ),
                    title: Text(cs[index].fromDate),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Patient: " + cs[index].patientName ),
                        Text("Admitted: " +cs[index].isAdmitted.toString())
                      ],
                    ),
                    onTap: () {
                      if (isLargeScreen) {
                        selectedValue = cs[index].id;
                        print(selectedValue);
                        _notifier.value = !_notifier.value;
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenVieConsultation(cs[index].id);
                          },
                        ));
                      }
                    },
                  ): ConsultationWidget('consultation_widget', cs: cs[index],
                    onItemSelected: (value){
                      {
                        if (isLargeScreen) {
                          selectedValue = cs[index].id;
                          print(selectedValue);
                          _notifier.value = !_notifier.value;
                        } else {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return ScreenVieConsultation(selectedValue);
                            },
                          ));
                        }
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
                    ?  ScreenVieConsultation(selectedValue) : Container();
            })
    )

      ],
    );
  }
}