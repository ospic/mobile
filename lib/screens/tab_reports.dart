import 'package:chopper/chopper.dart';
import 'package:file_icon/file_icon.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/model/report.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ReportsTab extends StatelessWidget {
  final int consultationId;
  ReportsTab(this.consultationId);
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildBody(context, consultationId)
    );
  }
}

FutureBuilder<Response<BuiltList<Report>>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<BuiltList<Report>>>(
    future: Provider.of<PostApiService>(context).getConsultationReports(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final BuiltList<Report> reports = snapshot.data.body;
        return reports.length > 0 ? _buildConsultationWidget(context,  reports): Center(heightFactor: 4.0,child: Text("No reports"));
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildConsultationWidget(BuildContext context, BuiltList<Report> reports){
  final colors = [ Colors.blue, Colors.green, Colors.yellowAccent, Colors.red, Colors.indigo];
  return  ListView.builder(
      itemCount: reports.length,
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
              leading: FileIcon(reports[index].name, size: 25.0,),
              title: Text(reports[index].name, style: TextStyle(color: colorAccent, fontWeight: FontWeight.bold)),
              subtitle: Text(reports[index].location),
            ),
        );
      });
}