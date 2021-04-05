import 'package:mobile/data/Choice.dart';
import 'package:mobile/tabhost/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/index.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

List<Choice> choices = const <Choice>[
  const Choice(title: 'Home', icon: MdiIcons.viewDashboard),
  const Choice(title: 'Profile', icon: MdiIcons.account),
  const Choice(title: 'Settings', icon: MdiIcons.cog),
  const Choice(title: 'Prefference', icon: Icons.directions_railway),
  const Choice(title: 'Logout', icon: MdiIcons.powerOff),
];

class ScreenTabs extends StatefulWidget {
  ScreenTabs({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<ScreenTabs> {




  @override
  void initState() {
    super.initState();
  }

  void onTabTapped(int index) {
    setState(() {
      if (index == 0) {
        Scaffold.of(context).openDrawer(); // This is what I've tried
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

          appBar: PreferredSize(
              child: AppBar(
                centerTitle: false,
                backgroundColor: colorPrimary,
                elevation: 0.0,
                bottom: TabBar(
                  labelStyle: TextStyle(color: Colors.white,  fontSize: 18.0),
                  unselectedLabelStyle: TextStyle(color: Colors.white,  fontSize: 15.0),
                  indicatorColor: colorAccent,
                  labelColor: Colors.white,
                  unselectedLabelColor: green2,
                  tabs: [
                    Tab(
                      text: "Consultations",
                    ),
                    Tab(
                      text: 'Bills',
                    ),
                    Tab(
                      text: 'Screes',
                    )
                  ],
                ),
              ),
              preferredSize: Size.fromHeight(48.0)),
          body: TabBarView(
            children: [ Consultations(), TabBills(),MasterListTab()],
          ),
          
        ),
      
    );
  }
}
