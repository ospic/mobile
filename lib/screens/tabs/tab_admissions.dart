import 'package:chopper/chopper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/view_admission.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/widget_not_found.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

class AdmissionsTab extends StatelessWidget {
  final int consultationId;
  late ThemeData _theme;
  AdmissionsTab(this.consultationId);
  Widget build(BuildContext context) {
    _theme = Theme.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: _theme.appBarTheme.backgroundColor,
        body: _buildBody(context, consultationId)
    );
  }

FutureBuilder<Response<BuiltList<Admission>>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<BuiltList<Admission>>>(
    future: Provider.of<PostApiService>(context).getConsultationAdmissions(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
        final BuiltList<Admission>? admissions = snapshot.data?.body;
        return admissions!.length > 0 ? _buildConsultationWidget(context,  admissions): NothingFoundWarning();
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

Widget _buildConsultationWidget(BuildContext context, BuiltList<Admission> admissions){
  return  Container(
      color: _theme.appBarTheme.foregroundColor,
      child: ListView.builder(
      itemCount: admissions.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
      physics: ClampingScrollPhysics(),

      itemBuilder: (context, index) {
        return  Card(
          color: _theme.appBarTheme.foregroundColor,
          child: Container(
            margin: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 1.0),
            padding: EdgeInsets.only(top: 3.0, bottom: 4.0),
            color: _theme.appBarTheme.foregroundColor,
            constraints: BoxConstraints(
              minHeight: 70,
            ),
            child: ListTile(
              leading: Icon( MdiIcons.circle,color: admissions[index].isActive! ? green1: gray3),
              title: Text(admissions[index].startDate!, style: _theme.textTheme.headline3),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 10.0,),
                  Text(" Date:\t"+admissions[index].startDate!, style: _theme.textTheme.headline4),
                  Text(" To: \t"+admissions[index].endDate!, style: _theme.textTheme.headline4),
                  Text(" On ward: "+admissions[index].wardName!, style: _theme.textTheme.headline4),
                  Text(" Bed No.:"+admissions[index].bedId.toString(), style: _theme.textTheme.headline4)
                ],
              ),
              onTap:() => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          ViewAdmissionScreen(admissions[index].id))),

            ),
          ),
        );
      }));
}}