import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

import '../../routes.dart';

class TabSettings extends StatefulWidget {

  @override
  _TabSettingsState createState()=> _TabSettingsState();
}

class _TabSettingsState extends State<TabSettings>{

  bool value = false;
  void _onFingerPrintSetting(bool it) {
    setState(() {
      value = it;
      // Application.of(context).changeTheme(it ? ThemeMode.dark: ThemeMode.light);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SettingsList(
          sections: [
            SettingsSection(
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.language),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchValue: value,
                  onToggle: (bool value) {
                    _onFingerPrintSetting(value);
                  },
                ),
              ],
            ),
          ],
        )
    );
  }
}