import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opus_web/nav_drawer/drawer_item.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          DrawerItem('Episodes', Icons.videocam),
          DrawerItem('About', Icons.help),
        ],
      ),
    );
  }
}
