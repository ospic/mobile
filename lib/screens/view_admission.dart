import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/widget_something_happened.dart';
import 'package:provider/provider.dart';
import 'package:timeline_tile/timeline_tile.dart';

class ViewAdmissionScreen extends StatelessWidget {
  final int admissionId;

  ViewAdmissionScreen(this.admissionId);

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Constants.clr_light_blue,
          elevation: 0.0,
          title: Text('Admission ' + admissionId.toString(), style: TextStyle(fontWeight: FontWeight.bold, color: Constants.clr_blue),),
          iconTheme: IconThemeData(color: Constants.clr_blue),
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
        final Admission? admission = snapshot.data?.body;
        return _buildConsultationWidget(context, admission);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

SingleChildScrollView _buildConsultationWidget(BuildContext context, Admission? admission) {
  return SingleChildScrollView(
    child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(2.0),
              child: Table(
                defaultColumnWidth: FlexColumnWidth(3),
                border: TableBorder.all(
                    color: gray1, style: BorderStyle.solid, width: 0.5),
                children: [
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text('Start Date',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(admission!.startDate!)),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text('End Date',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(admission.endDate!)),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text('Is active ?',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(
                          admission.isActive.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: admission.isActive!
                                  ? colorPrimary
                                  : Colors.red),
                        )),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text('Ward name',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(admission.wardName.toString())),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text('Ward id',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(admission.wardId.toString())),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text('Bed no.',
                            style: TextStyle(fontWeight: FontWeight.bold))),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(admission.bedId.toString())),
                  ]),
                  TableRow(children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(
                          'Ward Bed Identifier',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 5.0, bottom: 4.0, left: 5.0),
                        child: Text(admission.bedIdentifier.toString())),
                  ]),
                ],
              ),
            ),
            Center(
                heightFactor: 2.0,
                child: Text(
                  "Admission Visits",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            _buildAdmissionVisitsBody(context, admission.id)
          ],
        )),
  );
}

FutureBuilder<Response<BuiltList<Visit>>> _buildAdmissionVisitsBody(BuildContext context, int id) {
  return FutureBuilder<Response<BuiltList<Visit>>>(
    future: Provider.of<PostApiService>(context)
        .getConsultationAdmissionsVisits(id),
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
        final BuiltList<Visit>? visits = snapshot.data?.body;
        return visits!.length > 0 ? _buildConsultationVisitsWidget(context, visits) : Center(heightFactor: 4.0, child: Text("No visits"));
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

ListView _buildConsultationVisitsWidget(BuildContext context, BuiltList<Visit> visits) {
  final colors = [
    Colors.blue,
    Colors.green,
    Colors.yellowAccent,
    Colors.red,
    Colors.indigo
  ];
  return ListView.builder(
      itemCount: visits.length,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(8.0),
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TimelineTile(
          isFirst: index == 0,
          isLast: index == (visits.length - 1),
          alignment: TimelineAlign.start,
          indicatorStyle: IndicatorStyle(
              width: 15,
              padding: const EdgeInsets.all(8),
              iconStyle: IconStyle(iconData: Icons.circle, color: Colors.white),
              color: colors[index % colors.length]),
          endChild: Container(
            margin: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 1.0),
            padding: EdgeInsets.only(top: 3.0, bottom: 4.0),
            color: Constants.clr_light_blue,
            constraints: BoxConstraints(
              minHeight: 90,
            ),
            child: ListTile(
              title: Text(visits[index].date.toString(), style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold)),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Text(visits[index].symptoms.toString(),style: TextStyle(color: Colors.black)),
              ),
            ),
          ),
        );
      });
}
