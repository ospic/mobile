import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/screens/index.dart';

import 'package:mobile/utils/sharedpreference.dart';
import 'package:mobile/widgets/index.dart';
import 'package:provider/provider.dart';
import 'package:built_collection/built_collection.dart';
import '../data/post_api_service.dart';
import '../model/m_tenant.dart';
import '../utils/util.dart';
final List<String> _titles = ['', 'title.appointments','title.bills','title.insurancecards','title.account'];

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
    TabUserAccount()
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
    ThemeData _theme = Theme.of(context);
    return Scaffold(
      backgroundColor: _theme.scaffoldBackgroundColor,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: _theme.appBarTheme.backgroundColor,
        bottomOpacity: 2,
        automaticallyImplyLeading: false,
        title: Padding(padding: EdgeInsets.only(right: 10.0, bottom: 13.0),child: Text(_titles[_selectedIndex].tr(), style: _theme.appBarTheme.titleTextStyle,)),
        actions: [Padding(padding: EdgeInsets.only(right: 10.0, top: 10.0), child: Text('${dateFormatter(DateTime.now())}',style: _theme.appBarTheme.titleTextStyle,),)],
      ),

      body: Container(
        color: _theme.primaryColor,
        child:  _currentInstanceBuilder(context),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: _theme.bottomNavigationBarTheme.unselectedItemColor,
        selectedItemColor: _theme.bottomNavigationBarTheme.selectedItemColor,
        backgroundColor: _theme.bottomNavigationBarTheme.backgroundColor,
        selectedIconTheme: _theme.bottomNavigationBarTheme.selectedIconTheme,
        unselectedIconTheme: _theme.bottomNavigationBarTheme.unselectedIconTheme,
        showUnselectedLabels: false,
        showSelectedLabels: true,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(47,68,84, 1),
            icon: Icon(Icons.home),
            label: 'Consultations',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timer_sharp),
            label: 'Schedules',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Bills',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'Insurances',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
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
          backgroundColor: _theme.primaryColor,
          foregroundColor: Colors.white,
        )),
          Visibility(
              visible: _selectedIndex ==1  ,
              child:FloatingActionButton(
                tooltip: 'tooltip.newappointment'.tr(),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenCreateAppointment()));
                },
                mini: false,
                child: const Icon(Icons.add_outlined),
                backgroundColor: _theme.primaryColor,
                foregroundColor: Colors.white,
              ))
        ],
      ),
    );
  }


  FutureBuilder<int?> _currentInstanceBuilder(BuildContext context){
    return FutureBuilder<int?>(
        future: Utils.getPatientId(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.done && snapshot.hasData){
            return _children[_selectedIndex];
          }
          return _buildBody(context);
        });
  }


  FutureBuilder<Response<BuiltList<Tenant>>> _buildBody(BuildContext context) {
    return FutureBuilder<Response<BuiltList<Tenant>>>(
        future: Provider.of<PostApiService>(context).fetchUserTenants(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
            final BuiltList<Tenant>? tenants = snapshot.data?.body;
            if(tenants!.isNotEmpty){
              SharedPreference sp = new SharedPreference();
              sp.setIntToSF(enumKey.PATIENT_ID.toString(), tenants.first.patientId!);
              return _children[_selectedIndex];
            }
          }
          return NothingFoundWarning();
        });
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
