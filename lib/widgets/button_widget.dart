import 'package:mobile/utils/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatefulWidget {
  final String title;
  final IconData iconData;
  final Color textColor;
  final GestureTapCallback tapCallback;

  const ResponsiveButton(String s, {
      Key key,
      this.iconData,
      @required this.title,
      this.textColor,
      this.tapCallback
      
    }): super(key: key);

  @override
  State<StatefulWidget> createState() => _ResponsiveButtonWidgetState();
}

class _ResponsiveButtonWidgetState extends State<ResponsiveButton> {
  @override
  Widget build(BuildContext context) {
    return Utils.isAndroidPlatform()
        ? RaisedButton(
            onPressed: widget.tapCallback,
            child: Text(' ${widget.title}'),
            color: green1,
          ): CupertinoButton(
            child: Text(widget.title), 
            onPressed: widget.tapCallback,
            color: green1,
            )
        ;
  }
}
