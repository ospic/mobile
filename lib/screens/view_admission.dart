import 'package:chopper/chopper.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/screens/tab_services_and_costs.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ViewAdmissionScreen extends StatelessWidget {
  final int admissionId;
  ViewAdmissionScreen(this.admissionId);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: green1.withOpacity(0.9),
          title: Text('Admission ' + admissionId.toString()),
        ),
        body: _buildBody(context, admissionId));
  }
}

FutureBuilder<Response<Admission>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<Admission>>(
    future:
        Provider.of<PostApiService>(context).getConsultationAdmissionsById(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final Admission admission = snapshot.data.body;
        return _buildConsultationWidget(context, admission);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

SingleChildScrollView _buildConsultationWidget(
    BuildContext context, Admission admission) {
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(),
      child: Table(
        defaultColumnWidth: FixedColumnWidth(120.0),
        border: TableBorder.all(
            color: Colors.black, style: BorderStyle.solid, width: 2),
        children: [
          TableRow(children: [
            Column(
                children: [Text('Title', style: TextStyle(fontSize: 20.0))]),
            Column(
                children: [Text('Info', style: TextStyle(fontSize: 20.0))]),

          ]),
          TableRow(children: [
            Column(children: [Text('Start Date')]),
            Column(children: [Text(admission.startDate)]),

          ]),
          TableRow(children: [
            Column(children: [Text('End Date')]),
            Column(children: [Text(admission.endDate)]),

          ]),
          TableRow(children: [
            Column(children: [Text('Is active ?')]),
            Column(children: [Icon(admission.isActive ? MdiIcons.check :MdiIcons.crosshairs)]),

          ]),
          TableRow(children: [
            Column(children: [Text('Ward name')]),
            Column(children: [Text(admission.wardName)]),

          ]),
          TableRow(children: [
            Column(children: [Text('Ward id')]),
            Column(children: [Text(admission.wardId.toString())]),
          ]),
          TableRow(children: [
            Column(children: [Text('Bed no.')]),
            Column(children: [Text(admission.bedId.toString())]),
          ]),
          TableRow(children: [
            Column(children: [Text('Ward Bed Identifier')]),
            Column(children: [Text(admission.bedIdentifier)]),
          ]),
        ],
      ),
    ),
  );
}
