import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/screens/screen_profile.dart';
import 'package:mobile/screens/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/navigation_service.dart';
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
      '/profile': (BuildContext context) => ProfileScreen(),
      '/help': (BuildContext context) => HelpScreen(),
      '/contacts': (BuildContext context) => ContactsScreen(),
      '/consultations':(BuildContext context) => HomeScreen(),

    };

    
  @override
  Widget build(BuildContext context) {
    return Provider(
      create:(_) => PostApiService.create() ,
      dispose: (_, PostApiService service) => service.client.dispose(),
      child:  MaterialApp(
        navigatorKey: NavigationService.instance.navigationKey,
      theme: ThemeData(
          fontFamily: 'FiraSans',
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
          textTheme: TextTheme(
            body1:  TextStyle(fontWeight: FontWeight.normal, height: 1.0, fontFamily: 'FiraSans', fontSize: 20.0),
            headline: TextStyle(fontWeight: FontWeight.normal, height: 1.0, fontFamily: 'FiraSans', fontSize: 20.0),
            button: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, letterSpacing: 1.25),
          )
      ),
      debugShowCheckedModeBanner: false,
        routes: routes,
        title: '',
        home: SplashScreen(),
    )
    );
  }
  
}