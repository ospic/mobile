import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NothingFoundWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(MdiIcons.cloudAlert, size:42.0,color: Colors.blueGrey),
          SizedBox(height: 10,),
          Text('No data found ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19.0, color: Colors.blueGrey),)
        ],
      ),
    );
  }
}
