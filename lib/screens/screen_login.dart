import 'dart:convert';
import 'package:mobile/model/auth_response.dart';
import 'package:mobile/model/serializers.dart';
import 'package:mobile/utils/api.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/auth_post.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:http/http.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({required Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginScreen> {
  final username = TextEditingController();
  final password = TextEditingController();
  final focus = FocusNode();
  final _formKey = GlobalKey<FormState>();
  late ProgressDialog pd;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Scaffold(
          backgroundColor: colorPrimary,
          resizeToAvoidBottomInset: false,
          body: Center(
                  child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Image.asset(
                            'images/icon.png',
                            width: 100,
                            height: 100,
                          ),
                          Form(
                              key: _formKey,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[


                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: username,
                                        decoration: new InputDecoration(
                                          prefixIcon: Icon(MdiIcons.account),

                                            filled: true,
                                            hintStyle: new TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic),
                                            errorStyle: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                            hintText: "username",
                                            labelText: 'Username *',
                                            fillColor: Colors.white70),
                                        textInputAction: TextInputAction.next,
                                        autofocus: true,
                                        onFieldSubmitted: (v){
                                          FocusScope.of(context).requestFocus(focus);
                                        },

                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Username cannot be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding:EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      margin: const EdgeInsets.only(bottom: 20.0),
                                      child: TextFormField(
                                        obscureText: true,
                                        decoration: new InputDecoration(
                                          prefixIcon: Icon(MdiIcons.lock),
                                            filled: true,
                                            hintStyle: new TextStyle(color: Colors.grey[800], fontStyle: FontStyle.italic),
                                            errorStyle: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),
                                            hintText: "password",
                                            labelText: 'Password',
                                            fillColor: Colors.white70),
                                        focusNode: focus,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'Password cannot be empty';
                                          }
                                          return null;
                                        },
                                        textInputAction: TextInputAction.go,
                                        controller: password,
                                        onFieldSubmitted: (v){
                                          pd = new ProgressDialog(context,
                                              type: ProgressDialogType.Normal,
                                              isDismissible: true,
                                              showLogs: false);
                                          tryToLogin(context, _formKey,pd, );
                                        },
                                      ),
                                    ),
                                    ResponsiveButton(
                                      'responsice_button',
                                      key: Key('value'),
                                      textColor: Colors.white,
                                      iconData: MdiIcons.abjadArabic,
                                      title: 'Sign In',
                                      tapCallback: () async {
                                        pd = new ProgressDialog(context,
                                            type: ProgressDialogType.Normal,
                                            isDismissible: true,
                                            showLogs: false);
                                        tryToLogin(context, _formKey,pd);
                                      },
                                    ),
                                  ])),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Text('Does not have account?'),
                              TextButton(
                                style: TextButton.styleFrom(
                                textStyle: TextStyle(color:   Colors.blue),
                                onSurface: Colors.grey),
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(),
                                ),
                                onPressed: () {
                                  //Navigator.pushNamed(context, '/home');
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ))
                        ],
                      ))))
    ]);
  }


Future<bool> isloggedIn() async {
  var sharepref = new SharedPreference();
  return await sharepref.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString());
}

Future<void> tryToLogin(BuildContext context, GlobalKey<FormState> _formKey,ProgressDialog pr) async{

    if (_formKey.currentState!.validate()) {

      pr.update(progress: 50.0, message: "Please wait...", progressWidget: Container(
          padding: EdgeInsets.all(8.0),
          child: CircularProgressIndicator()),
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
            fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 19.0,
            fontWeight: FontWeight.w600),
      );
      var newPost = AuthPost.from(username.text.toString(), password.text.toString());
      pr.show();
      final response = await Session.apiAuthPost(serializers.serialize(newPost));
      Response httpClientResponse = response;
      String value =  response.body;
      AuthResponse? authResponse = serializers.deserializeWith(AuthResponse.serializer, jsonDecode(value) ?? Map());
      final int statusCode = httpClientResponse.statusCode;
      print("Status code"+authResponse.toString());
      if(statusCode == 200){
        pr.hide();
        var sharepref = new SharedPreference();
        await sharepref.setStringToSF(enumKey.BASE_64_EncodedAuthenticationKey.toString(), authResponse!.accessToken!);
        await sharepref.setBooleanToSF(enumKey.IS_LOGGED_IN.toString(), true).then((onValue) {});
        await sharepref.setStringToSF(enumKey.USER_NAME.toString(), authResponse.username!);
        await sharepref.setStringToSF(enumKey.BASE_URL.toString(), response.request!.url.toString().substring(0,response.request!.url.toString().length - 6 ));
        Navigator.pushNamed(context, '/home');
      }else if(statusCode == 500){
        pr.hide();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Invalid username or password. Try again ..."),
            ));
      }else{
        pr.hide();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Internal server error. Please try again later..."),
            ));
      }
    }

}}