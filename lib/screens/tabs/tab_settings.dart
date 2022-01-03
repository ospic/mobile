import 'package:chopper/chopper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/utils/Constants.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/utils/sharedpreference.dart';
import 'package:provider/provider.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';

import '../screen_message.dart';

class TabSettings extends StatefulWidget {

  @override
  _TabSettingsState createState()=> _TabSettingsState();
}

class _TabSettingsState extends State<TabSettings> {

  final url = TextEditingController();
  final cPassword = TextEditingController();
  final rePassword = TextEditingController();
  final newPassword = TextEditingController();

  bool value = false;
  void _onFingerPrintSetting(bool it) {
    setState(() {
      value = it;
      // Application.of(context).changeTheme(it ? ThemeMode.dark: ThemeMode.light);
    });
  }


  Future<void> _showLinkChangesDialog() async{
    url.text = await _baseUrl() == null? "NO VALUE" :   await _baseUrl();
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.fromLTRB(10.0, 0,0,0),
          title: Text('Update application endpoints'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 20.0,),

                TextField(
                  controller: url,
                  decoration: InputDecoration(
                    labelText: 'End point URL',
                  ),

                )
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => colorPrimary)),
              child: Text('Save'),
              onPressed: () async{
                await _updateUrl(url.text.toString());
              },
            ),
            ElevatedButton(
              child: Text('IGNORE'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showPasswordChangeDialog() async{
    url.text = await _baseUrl() == null? "NO VALUE" :   await _baseUrl();
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.fromLTRB(10.0, 0,0,0),
          title: Text('Change password'),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 20.0,),
                TextField(
                  controller: cPassword,
                  decoration: InputDecoration(
                    labelText: 'Current password',
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  controller: newPassword,
                  decoration: InputDecoration(
                    labelText: 'New password',
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  controller: rePassword,
                  decoration: InputDecoration(
                    labelText: 'Re-type password',
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) => colorPrimary)),
              child: Text('UPDATE PASSWORD'),
              onPressed: () async{
                await _updatePassword(cPassword, newPassword, rePassword);
              },
            ),
            ElevatedButton(
              child: Text('IGNORE'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Constants.clr_light_blue,
        body: SettingsList(
          lightBackgroundColor: Constants.clr_light_blue,
          sections: [
            SettingsSection(
              title: 'Common',
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.language),
                  onPressed: (BuildContext context) {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenMessage()));

                  },
                ),
                SettingsTile(
                  title: 'Update end point',
                  subtitle: 'Update application server endpoint',
                  leading: Icon(Icons.link),
                  onPressed: (BuildContext context){
                    _showLinkChangesDialog();
                  }
                ),
              ],
            ),
            SettingsSection(
              title: 'Security',
              tiles: [

                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchValue: value,
                  onToggle: (bool value) {
                    _onFingerPrintSetting(value);
                  },
                ),

                SettingsTile(
                    title: 'Update password',
                    subtitle: 'Change your current password',
                    leading: Icon(Icons.lock_outline),
                    onPressed: (BuildContext context){
                      _showPasswordChangeDialog();
                    }
                ),
                SettingsTile(
                    title: 'Logout',
                    subtitle: 'Click to log out. This will require you re-login',
                    leading: Icon(Icons.settings_power_rounded,color: Colors.redAccent,),
                    onPressed: (BuildContext context){
                      _logout();
                    }
                ),
              ],
            ),
          ],
        )
    );
  }
  Future<void> _logout() async{
    SharedPreference sp = new SharedPreference();
    sp.clearSF();
  }
  Future<String> _baseUrl() async{
    SharedPreference sp = new SharedPreference();
   return sp.getStringValuesSF(enumKey.BASE_URL.toString());
  }
  Future<void> _updateUrl(String baseUrl) async{
    SharedPreference sp = new SharedPreference();
    sp.setStringToSF(enumKey.BASE_URL.toString(), baseUrl);
    Navigator.of(context).pop();
  }

  Future<void> _updatePassword(TextEditingController cPassword,TextEditingController newPassword, TextEditingController rePassword) async{
    if(newPassword.text.toString() == rePassword.text.toString()){
      PasswordUpdate passwordUpdate = PasswordUpdate.from(cPassword.text.toString(), rePassword.text.toString());
      Future<Response> response = Provider.of<PostApiService>(context, listen: false).updatePassword(passwordUpdate);
      response.then((value) => {
        if(value.isSuccessful){
          //Navigator.pop(context),
        }
      });
    }
    Navigator.of(context).pop();
  }
}