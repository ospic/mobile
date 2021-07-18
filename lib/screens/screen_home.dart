import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/sharedpreference.dart';
final List<String> _titles = ['', 'Appointment\'s','Bill\'s','Insurances','Settings'];

class HomeScreen extends StatefulWidget {
  @override
  _NewHomeScreenState createState() => _NewHomeScreenState();
}

class _NewHomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    TabHome(),
    AppointmentsTab(),
    TabBills(),
    TabInsurances(),
    TabSettings()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  String dateFormatter(DateTime date) {
    dynamic dayData =
        '{ "1" : "Mon", "2" : "Tue", "3" : "Wed", "4" : "Thur", "5" : "Fri", "6" : "Sat", "7" : "Sun" }';

    dynamic monthData =
        '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "May", "6" : "June", "7" : "Jul", "8" : "Aug", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Dec" }';

    return json.decode(dayData)['${date.weekday}'] +
        ", " +
        date.day.toString() +
        " " +
        json.decode(monthData)['${date.month}'] +
        " " +
        date.year.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.clr_light_blue,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Constants.clr_light_blue,
        bottomOpacity: 2,
        automaticallyImplyLeading: false,
        title: Text(_titles[_selectedIndex], style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),),
        actions: [Padding(padding: EdgeInsets.only(right: 10.0, top: 10.0), child: Text('${dateFormatter(DateTime.now())}',style: TextStyle(color: Constants.clr_blue, fontWeight: FontWeight.bold),),)],
      ),

      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.blueGrey,
        selectedItemColor: Constants.clr_blue,

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
            icon: Icon(MdiIcons.calendarMonthOutline),
            label: 'Schedules',
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
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
        Visibility(
          visible: false ,
            child:FloatingActionButton(
          onPressed: () {
            _showLogoutDialog();
          },
          mini: false,
          child: const Icon(Icons.power_settings_new),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
        )),
          Visibility(
              visible: _selectedIndex ==1  ,
              child:FloatingActionButton(
                tooltip: 'Create new appointment',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenCreateAppointment()));
                },
                mini: false,
                child: const Icon(Icons.add_outlined),
                backgroundColor: Constants.clr_light_blue,
                foregroundColor: Constants.clr_blue,
              ))
        ],
      ),
    );
  }

  Future<void> _showLogoutDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout ?'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Are you sure you want to logout this session ?'),

              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Yes i\'m sure'),
              onPressed: () {
                SharedPreference sharedPref = new SharedPreference();
                sharedPref.clearSF();
              },
            ),
            TextButton(
              child: Text('No cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
