import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/screens/tab_services_and_costs.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenVieConsultation extends StatelessWidget {
  final int consultationId;
  ScreenVieConsultation(this.consultationId);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: green1.withOpacity(0.9),
          title: Text('Consultation No. '+consultationId.toString()),
        ),
        body: _buildBody(context, consultationId)
    );
  }
}

FutureBuilder<Response<ConsultationPayload>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<ConsultationPayload>>(
    future: Provider.of<PostApiService>(context).getUserConsultationById(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final ConsultationPayload consultation = snapshot.data.body;
        return _buildConsultationWidget(context, consultation);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

SingleChildScrollView _buildConsultationWidget(BuildContext context, ConsultationPayload consultation){
  final Staff staff = consultation.staff;
  final String staffName = staff==null? 'Un-assigned': (staff.fullName == null ? staff.username : staff.fullName);
  return SingleChildScrollView(

    child: ConstrainedBox(
      constraints: BoxConstraints(),
      child: Column(
          children:[
            Card(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    dense: true,
                    title: Text("From Date"),
                    subtitle: Text(consultation.fromdate),
                  ),
                  ListTile(
                    dense: true,
                    title: Text('To date'),
                    subtitle: Text(consultation.todate),
                  ),
                  ListTile(
                    dense: true,
                    title: Text('Staff'),
                    subtitle: Text(staffName),
                  ),

                ],
              ),
            ),
          ),
            _tabSection(context, consultation.id)]),
    ),
  );
}

Widget _tabSection(BuildContext context, int consultationId) {
  return DefaultTabController(
    length: 4,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
         child: Material(
           color: green1.withOpacity(0.9),
           child: TabBar(
               indicatorColor: textSecondaryDarkColor,
               isScrollable: true,
               tabs: [
                 Tab(text: "Diagnoses"),
                 Tab(text: "Services & Costs"),
                 Tab(text: "Reports"),
                 Tab(text: "Admissions")
               ]),
         ),
        ),
        Container(
          //Add this to give height
          height: MediaQuery
              .of(context)
              .size
              .height,
          child: TabBarView(children: [
            Container(
              child: DiagnosesTab(consultationId),
            ),
            Container(
              child: ServiceAndCostsTab(consultationId),
            ),
            Container(
              child: ReportsTab(consultationId),
            ),
            Container(
              child: AdmissionsTab(consultationId),
            ),

          ]),
        ),
      ],
    ),
  );
}