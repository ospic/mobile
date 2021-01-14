import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile/nav_drawer/navigation_drawer.dart';
import 'package:mobile/views/home_content_desktop.dart';
import 'package:mobile/widgets/centered_view/center_view.dart';
import 'package:mobile/widgets/navigation_bar/navigation_bar.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentDesktop(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
