import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';

class InfoTab extends StatelessWidget {
  final int admissionId;
  InfoTab(this.admissionId);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildBody(context, admissionId));
  }
}
FutureBuilder<Response<ConsultationPayload>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<ConsultationPayload>>(
    future: Provider.of<PostApiService>(context).getUserConsultationById(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
        final ConsultationPayload? consultation = snapshot.data?.body;
        return _buildConsultationWidget(context, consultation);
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

Widget _buildConsultationWidget(BuildContext context, ConsultationPayload? consultation){
  final Staff? staff = consultation?.staff;
  final String staffName = staff==null? 'Un-assigned': (staff.fullName == null ? staff.username! : staff.fullName!);
  return ListView(
      children:[
        Padding(
          padding: EdgeInsets.all(2.0),
          child: Table(
            defaultColumnWidth: FlexColumnWidth(3),

            border: TableBorder.all(
                color: gray1, style: BorderStyle.solid, width:0.5 ),
            children: [

              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('From Date', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(consultation!.fromdate!)),
              ]),
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('To Date', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(consultation.todate!)),
              ]),
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Is active ?', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0,left: 5.0),
                    child:Text(consultation.isActive.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: consultation.isActive!? colorPrimary: Colors.red),)),
              ]),
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Is Admitted ?', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(consultation.isAdmitted.toString(),style: TextStyle(fontWeight: FontWeight.bold, color: consultation.isAdmitted!? colorPrimary: Colors.red),)),
              ]),
              TableRow(children: [
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text('Consultant ', style: TextStyle(fontWeight: FontWeight.bold))),
                Padding(
                    padding:
                    EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                    child: Text(staffName)),
              ]),

            ],
          ),
        ),

      ]);

}