import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/colors.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/utils/sharedpreference.dart';
import 'package:settings_ui/settings_ui.dart';

class TabSettings extends StatefulWidget {

  @override
  _TabSettingsState createState()=> _TabSettingsState();
}

class _TabSettingsState extends State<TabSettings> {

  final url = TextEditingController();
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

  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SettingsList(
          lightBackgroundColor: Colors.white,
          sections: [
            SettingsSection(

              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.language),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Update end point',
                  subtitle: 'Update application server endpoint',
                  leading: Icon(Icons.link),
                  onPressed: (BuildContext context){
                    _showLinkChangesDialog();
                  }
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
  Future<String> _baseUrl() async{
    SharedPreference sp = new SharedPreference();
   return sp.getStringValuesSF(enumKey.BASE_URL.toString());
  }
  Future<void> _updateUrl(String baseUrl) async{
    SharedPreference sp = new SharedPreference();
    sp.setStringToSF(enumKey.BASE_URL.toString(), baseUrl);
    Navigator.of(context).pop();
  }
}