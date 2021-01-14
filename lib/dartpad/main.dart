import 'package:flutter/material.dart';
import 'package:mobile/views/index.dart';


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Ospic Mobile',
        theme: ThemeData(
            primarySwatch: Colors.lightBlue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            textTheme: Theme.of(context).textTheme.apply(
                  fontFamily: 'Open Sans',
                )),
        home: HomeView());
  }
}
