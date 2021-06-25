import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/widgets/widget_something_happened.dart';

class TabSettings extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SomethingWrongHasHappened()
    );
  }
}