import 'package:chopper/chopper.dart';
import 'package:file_icon/file_icon.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/model/report.dart';
import 'package:mobile/screens/view_admission.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class AdmissionsTab extends StatelessWidget {
  final int consultationId;
  AdmissionsTab(this.consultationId);
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildBody(context, consultationId)
    );
  }
}

FutureBuilder<Response<BuiltList<Admission>>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<BuiltList<Admission>>>(
    future: Provider.of<PostApiService>(context).getConsultationAdmissions(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final BuiltList<Admission> admissions = snapshot.data.body;
        return admissions.length > 0 ? _buildConsultationWidget(context,  admissions): Center(heightFactor: 4.0,child: Text("Not admitted"));
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildConsultationWidget(BuildContext context, BuiltList<Admission> admissions){
  final colors = [ Colors.blue, Colors.green, Colors.yellowAccent, Colors.red, Colors.indigo];
  return  ListView.builder(
      itemCount: admissions.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return  Container(
          margin: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 1.0),
          padding: EdgeInsets.only(top: 3.0, bottom: 4.0),
          color: gray1,
          constraints: BoxConstraints(
            minHeight: 70,
          ),
          child: ListTile(
            leading: Icon( MdiIcons.circle,color: admissions[index].isActive ? green1: gray3),
            title: Text(admissions[index].startDate, style: TextStyle(color: colorAccent, fontWeight: FontWeight.bold)),
            subtitle: Text("\n Admitted from:  "+admissions[index].startDate + "\n To: "+admissions[index].endDate +"\n On ward: "+admissions[index].wardName + "\n Bed no."+admissions[index].bedId.toString() + " - ["+admissions[index].bedIdentifier+"]"),
            onTap:() => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ViewAdmissionScreen(admissions[index].id))),

          ),
        );
      });
}