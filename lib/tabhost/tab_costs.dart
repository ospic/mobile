import 'package:flutter/material.dart';
import 'package:mobile/widgets/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile/utils/sharedpreference.dart';

class TabSentRequest extends StatelessWidget{
  SharedPreference sharedPref = new SharedPreference();
  @override
  Widget build(BuildContext context) {
   final String text = 'Clear SF';
    return Column(
      children: [
        OutlinedButton(
          style: ButtonStyle(),
          child: Text(text),
          onPressed: ()=>{
           // sharedPref.clearSF()
          },
        ),
      ],
    );
  }

  
}