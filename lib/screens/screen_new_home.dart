import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';

class ScreenNewHome extends StatefulWidget {
  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<ScreenNewHome> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.clr_light_blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constants.clr_light_blue,
        bottomOpacity: 2,
        actions: [Padding(padding: EdgeInsets.only(right: 10.0, top: 10.0), child: Text('Mon 8 Dec',style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold),),)],
      ),

      body: NestedScrollView(
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
              flexibleSpace:
                  ListTile(

                    title: Text('Hi Chizi',style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold, fontSize: 25.0, ),),
                    subtitle: Text(
                      'Here is a list of consultations \nyou may need to check...',
                      style: TextStyle(color: Constants.clr_blue,)
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
          color: Constants.clr_light_blue,
          child: new Container(
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0),
                  )),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(padding: EdgeInsets.only(left:15.0, bottom:5.0, top: 20.0),
                    child: Text('CONSULTATIONS (20)',style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),),
                    ListView.builder(
                      itemCount:  5,
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
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Constants.clr_blue,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.clipboardListOutline),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.calendarBlankOutline),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.stickerPlusOutline),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.forumOutline),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
