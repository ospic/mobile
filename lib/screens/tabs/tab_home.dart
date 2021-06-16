import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/consultation.dart';
import 'package:mobile/model/patient.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/utils/sharedpreference.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
import 'package:built_collection/built_collection.dart';
import 'package:chopper/chopper.dart';

import '../view_consultation.dart';

class TabHome extends StatefulWidget {

  TabHome();
  _TabHomeTabState createState() => _TabHomeTabState();
}
  class _TabHomeTabState extends State<TabHome> {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      floatHeaderSlivers: true,
      physics: PageScrollPhysics(),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
              expandedHeight: 150.0,
              primary: true,
              floating: true,
              pinned: false,
              forceElevated: innerBoxIsScrolled,
              automaticallyImplyLeading: false,
              backgroundColor: Constants.clr_light_blue,
              title: Text(''),
              elevation: 0.0,
              flexibleSpace:_flexibleSpace(context)

          ),
        ];
      },
      body: _buildBody(context),

    );
  }

  FutureBuilder<Response<Patient>>  _flexibleSpace(BuildContext context) {
    return FutureBuilder<Response<Patient>>(
      future: Provider.of<PostApiService>(context).getPatients(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {

          final Patient patient = snapshot.data.body;
          return ListTile(
            title: Text('Hi ${patient.name}',style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold, fontSize: 25.0, ),),
            subtitle: Text('Here is a list of consultations \nyou may need to check...', style: TextStyle(color: Constants.clr_blue,)),
            trailing:  GestureDetector(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                      decoration: BoxDecoration(
                        color: colorAccent,
                      ),
                      child: patient.patientPhoto == null ?
                      Image.asset('images/haired.jpg', height: 50.0, width: 50.0, fit: BoxFit.fitWidth,):
                  Image.network(UrlEndpoints.IMAGE_BASE_URL + patient.patientPhoto))),
              onTap: (){
                Navigator.pushNamed(context, '/profile');
              },
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }



  FutureBuilder<Response<BuiltList<Consultation>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<Consultation>>>(
      future: Provider.of<PostApiService>(context).getUserConsultations(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final BuiltList<Consultation> consultation = snapshot.data.body;

          return consultation.length > 0 ? _buildConsultationList(
              context, consultation.reversed.toBuiltList()) : Center(
            child: Text("No consultation found"),);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _buildConsultationList(BuildContext context, BuiltList<Consultation> cs){
    return  Container(
      color: Constants.clr_light_blue,
      child: new Container(
          margin: EdgeInsets.symmetric(horizontal: 3.0),
          decoration: new BoxDecoration(
              color: Colors.white,
              borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(20.0),
                topRight: const Radius.circular(20.0),
              )),
          child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(padding: EdgeInsets.only(left:15.0, bottom:5.0, top: 20.0),
                child: Text('CONSULTATIONS (${cs.length})',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),),

              Flexible(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      height: double.infinity,
                      width: double.infinity,
                      child:
                      ListView.separated(
                        itemCount:  cs.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading:  ClipRRect(
                              borderRadius: BorderRadius.circular(5.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: colorAccent,
                                ),
                                child: Icon(MdiIcons.drupal, color: cs[index].isActive ? Constants.clr_blue: null,), height: 40.0, width: 40.0,),
                            ),
                            title: Text(cs[index].fromDate,style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black54),),
                            subtitle: Text(cs[index].patientName),
                            trailing: Icon(MdiIcons.chevronRight),
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                return ScreenVieConsultation(cs[index].id);
                              },
                              ));
                            },
                          );
                        },
                        separatorBuilder: (context, index){
                          return  Container(
                              padding:  EdgeInsets.only(top: 1.0, bottom: 1.0),
                              color: Constants.clr_light_blue, height: 1);
                        },
                      ),

                  ))
            ],

          )
      ),
    );
  }


}

