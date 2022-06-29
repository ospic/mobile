import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/Authentication.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 70,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(themeData.scaffoldBackgroundColor),
            padding: MaterialStateProperty.all(
                EdgeInsets.symmetric(horizontal: 10.0)),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          onPressed: () async {
            setState(() {
              _isSigningIn = true;
            });

            User? user = await Authentication.signInWithGoogle(context: context);

            if (user != null) {
              preferences = await SharedPreferences.getInstance();
              preferences.setBool('ISAUTHENICATED', true);
              preferences.setBool('ISPASS', false);
              preferences.setBool('ISGOOGLE', true);

              print(user);
              var _googleAuthentication = {
                "displayName": user.displayName,
                "email": user.email,
                "emailVerified": true,
                "isAnonymous": false,
                "phoneNumber": null,
                "photoURL": user.photoURL
              };
              print(_googleAuthentication);
            }
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: _isSigningIn
                ? CircularProgressIndicator(
                    color: Colors.white,
                    strokeWidth: 2,
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/google_logo.png"),
                        height: 25.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          'button.continue_with_google'.tr(),
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
