import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
var selectedValue = 2;
var isLargeScreen = false;


class MasterListTab extends StatefulWidget {

  @override
  _MasterListTabState createState()=>_MasterListTabState();
}

class _MasterListTabState extends State<MasterListTab> {
  BuiltList<Consultation> _consultations;

  @override
  Future<void> initState() {
    super.initState();
  }


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
          child: ListView.builder(
              itemCount: cs.length,
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(0.0),
              physics: const AlwaysScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ConsultationWidget('consultation_widget',
                    cs: cs[index],
                    onItemSelected: (value) {
                      if (isLargeScreen) {
                        selectedValue = cs[index].id;
                        setState(() {

                        });
                      } else {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return ScreenVieConsultation(selectedValue);
                          },
                        ));
                      }
                    });
              }),
        ),
        isLargeScreen
            ? Expanded(child: ScreenVieConsultation(selectedValue))
            : Container(),
      ],
    );
  }
}