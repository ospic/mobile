import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
var selectedValue = 0;
var isLargeScreen = false;


class MasterListTab extends StatefulWidget {

  @override
  _MasterListTabState createState()=>_MasterListTabState();
}

class _MasterListTabState extends State<MasterListTab> {
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
          flex: 2,
          child: ListView.separated(
              itemCount: cs.length,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(0.0),
              physics: const AlwaysScrollableScrollPhysics(),

              itemBuilder: (context, index) {
                return  Container(

                child: ListTile(
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
                  subtitle: Text(cs[index].patientName),
                  onTap: () {
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
                  },
                ));
              },
          separatorBuilder: (context, index){
                return Container(color: Colors.grey, height: 1);
          },),
        ),
        ValueListenableBuilder(
            valueListenable: _notifier,
            builder: (BuildContext context, bool quoteReady, Widget child){
              return
                isLargeScreen
                    ? Expanded(
                    flex: 8,
                    child: ScreenVieConsultation(selectedValue))
                    : Container();
            })
      ],
    );
  }
}