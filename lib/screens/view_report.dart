import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewReportScreen extends StatelessWidget {
  final int reportId;
  ViewReportScreen(this.reportId);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: colorPrimary.withOpacity(0.9),
          title: Text('View report '),
        ),
        body: _buildBody(context, reportId));
  }
}

FutureBuilder<Response<Report>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<Report>>(
    future: Provider.of<PostApiService>(context).getConsultationReportById(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final Report consultation = snapshot.data.body;
        return _buildReportWidget(context, consultation);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

SingleChildScrollView _buildReportWidget(BuildContext context, Report report) {
  final String baseUrl = Provider.of<PostApiService>(context).client.baseUrl.replaceAll('/self', '');
  return SingleChildScrollView(
      child: ConstrainedBox(
    constraints: BoxConstraints(),
    child: Column(children: [
      Padding(
        padding: EdgeInsets.all(2.0),
        child: Center(
          child: Card(
            color: colorPrimary,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.0, left: 4.0, right: 4.0),
              child: Column(
                children: [
                  Center(heightFactor: 2.0, child: Text('[ ${report.id}  ] [  ${report.size}  ] [  ${report.type} ]  [ ${report.name} ] ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),),),
                  report.type.startsWith('image/') ? FadeInImage.assetNetwork(
                      placeholder: 'images/placeholder.gif',
                      image: baseUrl + report.url): Center(heightFactor: 2.0,child:Text('Document view not implemented'))
                  ,
                ],
              ),
            )
          ),
        ),
      ),

    ]),
  ));
}
