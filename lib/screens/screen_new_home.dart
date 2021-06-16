import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/screens/tabs/tab_home.dart';
import 'package:mobile/screens/tabs/tab_insurances.dart';
import 'package:mobile/tabhost/index.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
class ScreenNewHome extends StatefulWidget {
  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<ScreenNewHome> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    TabHome(),
    Consultations(),
    TabBills(),
    TabInsurances(),
    Placeholder(color:Colors.blue,)
  ];
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

      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Constants.clr_blue,
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home),
            label: 'Consultations',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.clipboardListOutline),
            label: 'Consultations',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.calendarBlankOutline),
            label: 'Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.stickerPlusOutline),
            label: 'Insurances',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.forumOutline),
            label: 'Notification',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
