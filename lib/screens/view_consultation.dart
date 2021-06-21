import 'package:chopper/chopper.dart';
import 'package:flutter/gestures.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

var selectedValue = 2;
var isLargeScreen = false;

class ScreenVieConsultation extends StatelessWidget {
  final int consultationId;
  ScreenVieConsultation(this.consultationId);

  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (MediaQuery.of(context).size.width > 600) {
        isLargeScreen = true;
      } else {
        isLargeScreen = false;
      }
      return Container(
        padding: EdgeInsets.all(0.0),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: _buildBody(context, consultationId)),
      );
    });
  }
}

FutureBuilder<Response<ConsultationPayload>> _buildBody(
    BuildContext context, int id) {
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

Widget _buildConsultationWidget(
    BuildContext context, ConsultationPayload consultation) {
  final Staff staff = consultation.staff;
  final String staffName = staff == null ? 'Un-assigned' : (staff.fullName == null ? staff.username : staff.fullName);
  final int consultationId = consultation.id;
  final List<String> _tabs = ['Info', 'Diagnoses','Costs','Reports','Admissions'];

  return DefaultTabController(
    length: _tabs.length,
      child: NestedScrollView(
    floatHeaderSlivers: true,
    headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          primary: true,
          backgroundColor: Constants.clr_light_blue,
          iconTheme: IconThemeData(
            color: Constants.clr_blue
          ),
          title: Text('Consultation: ${consultation==null? consultationId : consultation.fromdate}', style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold),),
          floating: true,
          pinned: true,
          expandedHeight: 160.0,
          forceElevated: innerBoxIsScrolled,
          bottom: TabBar(
            isScrollable: true,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.black54,
            labelColor: Constants.clr_blue,
            labelStyle: TextStyle(fontWeight: FontWeight.bold),
            tabs: _tabs.map((String name) => Tab(text: name)).toList(),
          ),
        ),
      ];
    },
        body:  TabBarView(children: [
          Container(
            child: InfoTab(consultationId),
          ),
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

  ));
}

Widget _tabSection(BuildContext context, int consultationId) {
  double width = MediaQuery.of(context).size.width;
  final int numberOfTabs = 5;
  double tabWidth = width / numberOfTabs;

  return DefaultTabController(
    length: numberOfTabs,
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          child: Material(
            color: green1.withOpacity(0.9),
            child:
                TabBar(indicatorColor: colorPrimary, isScrollable: true, tabs: [
              Container(
                width: tabWidth,
                child: Tab(text: "Info"),
              ),
              Container(
                width: tabWidth,
                child: Tab(text: "Diagnoses"),
              ),
              Container(
                width: tabWidth,
                child: Tab(text: "Services & Costs"),
              ),
              Container(
                width: tabWidth,
                child: Tab(text: "Reports"),
              ),
              Container(width: tabWidth, child: Tab(text: "Admissions"))
            ]),
          ),
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(children: [
            Container(
              child: InfoTab(consultationId),
            ),
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
