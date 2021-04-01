import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu/model/screen_hidden_drawer.dart';
import 'package:mobile/screens/profile_screen.dart';
import 'package:mobile/screens/index.dart';
import 'package:mobile/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/sharedpreference.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ScreenHiddenDrawer> itens = [];
  var sharedPreference = new SharedPreference();

  @override
  void initState() {
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Home",
          colorLineSelected: green1,
          baseStyle: TextStyle(
            color: Colors.white,
          ),
          selectedStyle: TextStyle(color: green1, fontSize: 25.0),
        ),
        Container(color: Colors.teal, child: ScreenTabs())));

    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Profile",
          colorLineSelected: green1,
          baseStyle: TextStyle(
            color: Colors.white,
          ),
          selectedStyle: TextStyle(color: green1, fontSize: 25.0),
        ),
        Container(
          color: Colors.orange,
          child: Center(child: ProfileScreen()),
        )));
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Contact Us",
          colorLineSelected: green1,
          baseStyle: TextStyle(
            color: Colors.white,
          ),
          selectedStyle: TextStyle(color: green1, fontSize: 25.0),
        ),
        Container(
          color: Colors.orange,
          child: Center(child: ContactsScreen()),
        )));
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Help",
          colorLineSelected: green1,
          baseStyle: TextStyle(
            color: Colors.white,
          ),
          selectedStyle: TextStyle(color: green1, fontSize: 25.0),
        ),
        Container(
          color: Colors.orange,
          child: Center(child: HelpScreen()),
        )));
    itens.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "Logout",
          colorLineSelected: green1,
          baseStyle: TextStyle(
            color: Colors.white,
          ),
          onTap: (){
            this.sharedPreference.clearSF();
            Navigator.pushNamed(context, '/login');
          },
          selectedStyle: TextStyle(color: green1, fontSize: 25.0),
        ),
        Container(
          color: Colors.orange,
          child: Center(child: ThisAppScreen()),
        )));

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
    return HiddenDrawerMenu(
      initPositionSelected: 0,
      screens: itens,
      backgroundColorMenu: blue,
      slidePercent: 60.0,
      backgroundColorAppBar: green1.withOpacity(0.9),
    );
  }
}
