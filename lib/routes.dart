import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/screens/ScreenAbout.dart';
import 'package:mobile/screens/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';

class Routes {
  Routes(){
    _setupLogging();
      runApp(MyApp());
    }
  }


void _setupLogging(){
  Logger.root.level  = Level.ALL;
  Logger.root.onRecord.listen((rec){
    print('${rec.level.name}: ${rec.time} : ${rec.message}');
  });
}
    


class MyApp extends StatelessWidget{
  final routes = <String, WidgetBuilder>{
      '/home': (BuildContext context) => HomeScreen(),
      '/login': (BuildContext context) => LoginScreen(),
      '/about': (BuildContext context) => ScreenAbout(),
      '/help': (BuildContext context) => HelpScreen(),
      '/contacts': (BuildContext context) => ContactsScreen(),
      '/app': (BuildContext context) => ThisAppScreen(),
      '/addgroup': (BuildContext context)=> ScreenNewGroup(),
      //'/group': (BuildContext context) => ScreenSingleGroup()
    };

    
  @override
  Widget build(BuildContext context) {
    return Provider(
      create:(_) => PostApiService.create() ,
      dispose: (_, PostApiService service) => service.client.dispose(),
      child:  MaterialApp(
      theme: ThemeData(fontFamily: 'Calibri'),
      debugShowCheckedModeBanner: false,
        routes: routes,
        title: '',
        home: SplashScreen(),
    )
    );
  }
  
}