import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
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
      if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
        final Report? consultation = snapshot.data?.body;
        return _buildReportWidget(context, consultation);
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

SingleChildScrollView _buildReportWidget(BuildContext context, Report? report) {
  return SingleChildScrollView(
      child: ConstrainedBox(
    constraints: BoxConstraints(),
    child: Column(children: [
      Padding(
        padding: EdgeInsets.all(2.0),
        child: Center(
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.0, left: 4.0, right: 4.0),
              child: Column(
                children: [
                  Center(heightFactor: 2.0, child: Text('[ ${report!.id}  ] [  ${report.size!}  ] [  ${report.location} ]  [ ${report.entity} ] ', style: TextStyle(fontWeight: FontWeight.normal, color: colorPrimary),),),
                  report.type!.startsWith('image/') ?
                  FadeInImage.assetNetwork(
                    image:'${report.url}',
                    placeholder: 'assets/images/placeholder.gif',
                    fit: BoxFit.cover,
                    height: 400.0,
                    imageErrorBuilder:  (context, error, stackTrace) {
                      return   Image.asset(
                        'assets/images/placeholder.gif',
                        fit: BoxFit.cover,
                        height: 400.0,

                      );
                    },
                  )
                      :
                  Center(heightFactor: 2.0,child:Text('Document view not implemented'))
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
