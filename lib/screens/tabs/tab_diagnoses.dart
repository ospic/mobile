import 'package:chopper/chopper.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mobile/model/diagnosis.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

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
        final BuiltList<Diagnosis>? diagnoses = snapshot.data?.body;
        return diagnoses!.length > 0 ?   _buildConsultationWidget(context,  diagnoses) : NothingFoundWarning( );
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

ListView _buildConsultationWidget(BuildContext context, BuiltList<Diagnosis> diagnoses){
  final colors = [ Colors.blue, Colors.green, Colors.yellow, Colors.red, Colors.indigo];
  return  ListView.builder(
        itemCount: diagnoses.length,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(8.0),
        physics: ClampingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TimelineTile(
            isFirst: index ==0,
            isLast: index ==(diagnoses.length-1),
            alignment: TimelineAlign.start,
            indicatorStyle: IndicatorStyle(
                width: 15,
                padding: const EdgeInsets.all(8),
                iconStyle: IconStyle(iconData: Icons.circle, color: Colors.blue),
                color: colors[index%colors.length]),
            
            endChild: Container(
              margin: EdgeInsets.only(top: 1.0, bottom: 1.0, left: 1.0),
              padding: EdgeInsets.only(top: 3.0, bottom: 4.0),
              constraints: BoxConstraints(
                minHeight: 90,
              ),
              child:Card(
                elevation: 1.2,
                shadowColor: Constants.clr_blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4), // if you need this
                  side: BorderSide(
                    color: Colors.white,
                    width: 1,
                  ),
                ),
                child: Container(
                  color: Colors.transparent,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(8.0),
                    title: Padding(padding: EdgeInsets.only(bottom: 10.0, ),
                    child: Text(diagnoses[index].date!, style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold)),),
                    subtitle: Text(diagnoses[index].symptoms!),
                  ),
                ),
              ),
              color: Colors.transparent,
            ),
          );
        });
}