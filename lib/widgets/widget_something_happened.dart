import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SomethingWrongHasHappened extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(MdiIcons.cloudQuestion, size:42.0,color: Colors.redAccent),
          SizedBox(height: 10,),
          Text('Oops! \n Something wrong has happened. \n Please try again later  ', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 19.0, color: Colors.redAccent),)
        ],
      ),
    );
  }
}
