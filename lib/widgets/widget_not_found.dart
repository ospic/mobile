import 'package:flutter/painting.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NothingFoundWarning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return Center(
      child:  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(MdiIcons.cloudAlert, size:42.0,color: _theme.iconTheme.color),
          SizedBox(height: 10,),
          Text('No data found ', style: _theme.textTheme.headline3,)
        ],
      ),
    );
  }
}
