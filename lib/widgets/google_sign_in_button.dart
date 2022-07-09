
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mobile/utils/index.dart';

import 'Authentication.dart';

class GoogleSignInButton extends StatefulWidget {
  @override
  _GoogleSignInButtonState createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  bool _isSigningIn = false;
  late SharedPreference preferences;

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width - 70,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                themeData.scaffoldBackgroundColor),
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
            final pattern = RegExp('.{1,608}');
            user?.getIdToken().then((value) => {
              print(value),
              pattern.allMatches(value).forEach((element) => print(element.group(0)))

            });

            if (user != null) {
              preferences = new SharedPreference();
              preferences.setBooleanToSF(enumKey.IS_LOGGED_IN.toString(), true);
              preferences.setBooleanToSF(enumKey.IS_PASSWORD.toString(), false);
              preferences.setBooleanToSF(enumKey.IS_GOOGLE.toString(), true);

              print(user);
              Navigator.pushNamed(context, '/home');
            }
          },
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: _isSigningIn
                ? CircularProgressIndicator(
              color: colorPrimary,
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


  void printWrapped(String text) {
    final pattern = RegExp('.{1, 800}');
    pattern.allMatches(text).forEach((element) => print(element.group(0)));
  }
}