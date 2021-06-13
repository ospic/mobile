import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/utils/colors.dart';

class ScreenNewHome extends StatefulWidget {
  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<ScreenNewHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorPrimary,

      body: NestedScrollView(
        floatHeaderSlivers: true,
        physics: PageScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              primary: true,
              floating: true,
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              automaticallyImplyLeading: false,
              backgroundColor: colorPrimary,
              title: Text('View consultation '),
              flexibleSpace:
                  ListTile(
                    title: Text('Opening soon',style: TextStyle(color: Colors.white),),
                    subtitle: Text(
                      'Annisa Cahyani',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0, color: Colors.white),
                    ),
                    trailing: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Container(
                            decoration: BoxDecoration(
                              color: colorAccent,
                            ),
                            child: Image.asset('images/haired.jpg', height: 50.0, width: 50.0, fit: BoxFit.fitWidth,))),
                  )

            ),
          ];
        },
        body: Container(
          color: colorPrimary,
          child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0),
                  )),
              child: Expanded(
                child: Column(
                  children: [
                    ListView.builder(
                      itemCount:  4,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading:  ClipRRect(
                            borderRadius: BorderRadius.circular(5.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: colorAccent,
                              ),
                              child: Icon(MdiIcons.drupal), height: 40.0, width: 40.0,),
                          ),
                          title: Text('Lorem ipsum dolor sit de amet ',style: TextStyle( fontWeight: FontWeight.bold, color: Colors.black54),),
                          subtitle: Text('So far everything is fine, behaves as we want'),
                          trailing: Icon(MdiIcons.chevronRight),
                        );
                      },
                    )
                  ],
                ),
              )
          ),
        ),
      ),
    );
  }
}
