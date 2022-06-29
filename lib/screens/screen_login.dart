import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/model/auth_response.dart';
import 'package:mobile/utils/index.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:mobile/model/auth_post.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:provider/provider.dart';
import 'package:chopper/chopper.dart';

import '../utils/Authentication.dart';
import '../widgets/google_sign_in_button.dart';

class LoginScreen extends StatefulWidget {

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
                            'assets/images/icon.png',
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
                                          prefixIcon: Icon(Icons.account_circle_outlined),

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
                                          prefixIcon: Icon(Icons.lock_outline),
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
                                          tryToLogin(context, _formKey, );
                                        },
                                      ),
                                    ),
                                    ResponsiveButton(
                                      'responsice_button',
                                      key: Key('value'),
                                      textColor: Colors.white,
                                      iconData: Icons.attach_money_rounded,
                                      title: 'Sign In',
                                      tapCallback: () async {
                                        pd = new ProgressDialog(context,
                                            type: ProgressDialogType.Normal,
                                            isDismissible: true,
                                            showLogs: false);
                                        tryToLogin(context, _formKey,);
                                      },
                                    ),
                                    FutureBuilder(
                                      future: Authentication.initializeFirebase(context: context),
                                      builder: (context, snapshot) {
                                        if (snapshot.hasError) {
                                          return Text('Error initializing Firebase');
                                        } else if (snapshot.connectionState ==
                                            ConnectionState.done) {
                                          return GoogleSignInButton();
                                        }
                                        return CircularProgressIndicator(
                                          valueColor: AlwaysStoppedAnimation<Color>(
                                            Colors.orange,
                                          ),
                                        );
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


Future<bool?> isLoggedIn() async {
  var sp = new SharedPreference();
  return await sp.getBoolValuesSF(enumKey.IS_LOGGED_IN.toString());
}

Future<void> tryToLogin(BuildContext context, GlobalKey<FormState> _formKey,) async{
   late AuthResponse _authResponse;
   late SharedPreference sharepref;
   int statusCode = 0;
   ProgressDialog pr = new ProgressDialog(context);
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
      Future<Response<AuthResponse>> response = Provider.of<PostApiService>(context, listen: false).postForLogin(newPost);
      response.then((v) async => {
        statusCode  = v.statusCode,
        if(v.isSuccessful){
           _authResponse = v.body!,

      if(statusCode == 200){
        pr.hide(),
        sharepref = new SharedPreference(),
        await sharepref.setStringToSF(enumKey.BASE_64_EncodedAuthenticationKey.toString(), _authResponse.accessToken!),
        await sharepref.setBooleanToSF(enumKey.IS_LOGGED_IN.toString(), true).then((onValue) {}),
        await sharepref.setStringToSF(enumKey.USER_NAME.toString(), _authResponse.username!),
        //await sharepref.setStringToSF(enumKey.BASE_URL.toString(), response.!.url.toString().substring(0,response.request!.url.toString().length - 6 ));
        Navigator.pushNamed(context, '/home'),
      }else if(statusCode == 500){
        pr.hide(),
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Invalid username or password. Try again ..."),
            )),
      }else{
        pr.hide(),
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.redAccent,
              content: Text("Internal server error. Please try again later..."),
            )),
      }
        }
      });
    }

}}