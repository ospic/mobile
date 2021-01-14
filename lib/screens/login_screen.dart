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

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  ProgressDialog pr;

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        'images/login_background.jpg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Center(
              child: Card(
                  child: Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Form(
                              key: _formKey,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(10),
                                        child: Text(
                                          'Ospic mobile',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 30),
                                        )),
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      child: TextFormField(
                                        controller: nameController,
                                        decoration: new InputDecoration(
                                            border: new OutlineInputBorder(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                const Radius.circular(25.0),
                                              ),
                                            ),
                                            filled: true,
                                            hintStyle: new TextStyle(
                                                color: Colors.grey[800]),
                                            hintText: "username",
                                            labelText: 'Username',
                                            fillColor: Colors.white70),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Username cannot be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(10, 10, 10, 0),
                                      child: TextFormField(
                                        obscureText: true,
                                        decoration: new InputDecoration(
                                            border: new OutlineInputBorder(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                const Radius.circular(25.0),
                                              ),
                                            ),
                                            filled: true,
                                            hintStyle: new TextStyle(
                                                color: Colors.grey[800]),
                                            hintText: "password",
                                            labelText: 'Password',
                                            fillColor: Colors.white70),
                                        validator: (value) {
                                          if (value.isEmpty) {
                                            return 'Password cannot be empty';
                                          }
                                          return null;
                                        },
                                        controller: passwordController,
                                      ),
                                    ),
                                    ResponsiveButton(
                                      'responsice_button',
                                      key: Key('value'),
                                      textColor: Colors.white,
                                      iconData: MdiIcons.abjadArabic,
                                      title: 'Login',
                                      tapCallback: () async {
                                        var newPost = AuthPost().rebuild((b) =>
                                            b
                                              ..username =
                                                  nameController.text.toString()
                                              ..password = passwordController
                                                  .text
                                                  .toString());

                                        if (_formKey.currentState.validate()) {
                                          pr = new ProgressDialog(context,
                                              type: ProgressDialogType.Normal,
                                              isDismissible: true,
                                              showLogs: false);
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
                                          pr.show();
                                          final response = await Session.apiAuthPost(serializers.serialize(newPost));
                                          AuthResponse authResponse =
                                              serializers.deserializeWith(
                                                  AuthResponse.serializer,
                                                  jsonDecode(response));
                                          print(authResponse.toString());
                                          if (authResponse
                                              .accessToken.isNotEmpty) {
                                            var sharepref =
                                                new SharedPreference();
                                            await sharepref.setStringToSF(
                                                enumKey.BASE_64_EncodedAuthenticationKey
                                                    .toString(),
                                                authResponse.accessToken);
                                            await sharepref
                                                .setBooleanToSF(
                                                    enumKey.IS_LOGGED_IN
                                                        .toString(),
                                                    true)
                                                .then((onValue) {});
                                            Navigator.pushNamed(
                                                context, '/home');
                                          }
                                        }
                                      },
                                    ),
                                  ])),
                          Container(
                              child: Row(
                            children: <Widget>[
                              Text('Does not have account?'),
                              FlatButton(
                                textColor: Colors.blue,
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(fontSize: 20),
                                ),
                                onPressed: () {
                                  //Navigator.pushNamed(context, '/home');
                                },
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ))
                        ],
                      )))))
    ]);
  }
}

Future<bool> isloggedIn() async {
  var sharepref = new SharedPreference();
  return await sharepref.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString());
}
