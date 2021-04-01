import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/consultation_payload.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/diagnosis.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiagnosesTab extends StatelessWidget {
  final int consultationId;
  DiagnosesTab(this.consultationId);
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildBody(context, consultationId)
    );
  }
}

FutureBuilder<Response<BuiltList<Diagnosis>>> _buildBody(BuildContext context, int id) {
  return FutureBuilder<Response<BuiltList<Diagnosis>>>(
    future: Provider.of<PostApiService>(context).getConsultationDiagnoses(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done) {
        final BuiltList<Diagnosis> diagnoses = snapshot.data.body;
        return _buildConsultationWidget(context,  diagnoses);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

SingleChildScrollView _buildConsultationWidget(BuildContext context, BuiltList<Diagnosis> diagnoses){
  return SingleChildScrollView(
    child: ConstrainedBox(
      constraints: BoxConstraints(),
      child: ListView.builder(
        itemCount: diagnoses.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8.0),
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Card(
              color: Colors.green,
              elevation: 1,
              margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 5.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Text(diagnoses[index].date));
        }),
    ),
  );
}