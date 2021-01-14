import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'call_to_action_mobile.dart';
import 'call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
