import 'package:chopper/chopper.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:flutter/material.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/index.dart';
import 'package:mobile/routes.dart';
import 'package:mobile/utils/index.dart';
import 'package:provider/provider.dart';
import 'package:flutter_settings_ui/flutter_settings_ui.dart';
import 'package:built_collection/built_collection.dart';

import '../../widgets/widget_something_happened.dart';

class TabSettings extends StatefulWidget {

  @override
  _TabSettingsState createState()=> _TabSettingsState();
}

class _TabSettingsState extends State<TabSettings> {

  final url = TextEditingController();
  final cPassword = TextEditingController();
  final rePassword = TextEditingController();
  final newPassword = TextEditingController();
  var _value;
  late ThemeData _theme;

  bool value = false;
  void _onFingerPrintSetting(bool it) {
    setState(() {
      value = it;
      // Application.of(context).changeTheme(it ? ThemeMode.dark: ThemeMode.light);
    });
  }

  void _showLanguageChangeDialog() async{
    ThemeData _theme = Theme.of(context);
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.fromLTRB(10.0, 0,0,0),
          title: Center(child: Text('title.change_language'.tr(), style: _theme.appBarTheme.titleTextStyle,)),
          content: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Divider(),
                ListTile(
                  title: Text('English'),
                  subtitle: Text('Select English as a main language'),
                  dense: true,
                  onTap: (){
                    _updateApplicationLanguage(context, 'ENG');
                    //MyApp.setLanguage(context, Locale('en'));
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('Swahili'),
                  subtitle: Text('Changua Kiswahili kama lugha yako ya msingi'),
                  dense: true,
                  onTap: (){
                    _updateApplicationLanguage(context, 'SWA');
                    //MyApp.setLanguage(context, Locale('sw'));
                  },
                ),

              ],
            ),
          ),
        );
      },
    );
  }

  void _updateApplicationLanguage(BuildContext context, String locale){
    Application.setLanguage(context, Locale(locale.substring(0, locale.length - 1).toLowerCase()));
  }

  FutureBuilder<Response<BuiltList<Tenant>>> _buildBody(
      BuildContext context) {
    return FutureBuilder<Response<BuiltList<Tenant>>>(
      future: Provider.of<PostApiService>(context).fetchUserTenants(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
          final BuiltList<Tenant>? tenants = snapshot.data?.body;
          return Container(
              padding: EdgeInsets.all( 10.0),
              child: DropdownButtonFormField(
                value: _value,
                selectedItemBuilder: (BuildContext context) {
                  return tenants!.map<Widget>((Tenant tenant) {
                    return Text('${tenant.name}-${tenant.organization}', style: _theme.textTheme.headline3,);
                  }).toList();
                },
                items: tenants!.map((Tenant tenant) {
                  return DropdownMenuItem<int>(
                    child: Text('${tenant.name}-${tenant.organization}', style: _theme.textTheme.headline3,),
                    value: tenant.patientId,
                  );
                }).toList(),
                onChanged: (value) {
                  _value = int.parse(value.toString());
                  _updatePatientId(_value);
                },
                validator: (value) {
                  if (value == null) {
                    return 'warning.field_required'.tr();
                  }
                  return null;
                },
                hint: Text('selection.hospital'.tr()),
                style: TextStyle(color: colorPrimary, fontSize: 16, fontWeight: FontWeight.normal),
                icon: Icon(Icons.keyboard_arrow_down),
                isExpanded: true,
                isDense: true,
                decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.blue),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                    hintText: 'Choose your current hospital',
                    prefixIcon: Icon(Icons.list_alt, size: 18.0,),
                    filled: true,
                    fillColor: Colors.white,
                    border: Utils.roundedInputBorder(),
                    isDense: true
                ),
              ));
        } else if(snapshot.hasError){
          return SomethingWrongHasHappened();
        }  else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
  
  Future<void> _showLinkChangesDialog() async{
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.fromLTRB(10.0, 0,0,0),
          title: Text('Switch to another hospital'),
          content: SingleChildScrollView(
            child: _buildBody(context),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('Okay'),
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
    _theme = Theme.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: _theme.appBarTheme.backgroundColor,
        body: SettingsList(
          backgroundColor: _theme.appBarTheme.backgroundColor,
          sections: [
            SettingsSection(
              title: 'Common',
              titleTextStyle: _theme.textTheme.headline3,
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.translate),
                  trailing: Icon(Icons.chevron_right),
                  onPressed: (BuildContext context) {
                    _showLanguageChangeDialog();

                  },
                ),
                SettingsTile(
                  title: 'Clinic',
                  subtitle: 'Mosul',
                  leading: Icon(Icons.local_hospital_rounded),
                    trailing: Icon(Icons.chevron_right),
                  onPressed: (BuildContext context){
                    _showLinkChangesDialog();
                  }
                ),
              ],
            ),
            SettingsSection(
              title: 'Security',
              titleTextStyle: _theme.textTheme.headline3,
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
                    title: 'Security',
                    subtitle: 'Password',
                    leading: Icon(Icons.lock_outline),
                    trailing: Icon(Icons.chevron_right),
                    onPressed: (BuildContext context){
                      _showPasswordChangeDialog();
                    }
                ),
                SettingsTile(
                    title: 'Logout',
                    subtitle: 'Exit',
                    leading: Icon(Icons.settings_power_rounded,color: Colors.redAccent,),
                    trailing: Icon(Icons.chevron_right),
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


  Future<void> _updatePatientId(int patientId) async{
    SharedPreference sp = new SharedPreference();
    sp.setIntToSF(enumKey.PATIENT_ID.toString(), patientId);
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