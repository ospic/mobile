import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:mobile/data/post_api_service.dart';
import 'package:mobile/screens/tabs/tab_account.dart';
import 'package:mobile/screens/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile/utils/theme_class.dart';
import 'package:mobile/utils/navigation_service.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';
import 'package:easy_localization/easy_localization.dart';


class Routes {
  Routes(){
    _setupLogging();
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.dumpErrorToConsole(details);
      if (kReleaseMode)
        exit(1);
    };
      //runApp(Application());
      runApp(EasyLocalization(
         supportedLocales: [Locale('en'), Locale('sw')],
         path: 'assets/locales', // <-- change the path of the translation files
         fallbackLocale: Locale('en'),
         useOnlyLangCode: true,
           child: Application(),
           ));

    }
  }


void _setupLogging(){
  Logger.root.level  = Level.ALL;
  Logger.root.onRecord.listen((rec){
    print('${rec.level.name}: ${rec.time} : ${rec.message}');
  });
}



class Application extends StatefulWidget{
  @override
  _ApplicationState createState()=> _ApplicationState();

  static _ApplicationState? of(BuildContext context) => context.findAncestorStateOfType<_ApplicationState>();

  static void setLanguage(BuildContext context, Locale locale) {
    context.setLocale(locale);
  }
}

class _ApplicationState extends State<Application>{
   ThemeMode _themeMode = ThemeMode.system;
  final routes = <String, WidgetBuilder>{
      '/home': (BuildContext context) => HomeScreen(),
      '/login': (BuildContext context) => LoginScreen(),
      '/settings': (BuildContext context) => ScreenSettings(),
      '/contacts': (BuildContext context) => ContactsScreen(),
      '/consultations':(BuildContext context) => HomeScreen(),

    };

  void changeTheme(ThemeMode themeMode) {
    setState(() {
      _themeMode = themeMode;
    });
  }

    
  @override
  Widget build(BuildContext context) {
    return Provider(
      create:(_) => PostApiService.create() ,
      dispose: (_, PostApiService service) => service.client.dispose(),
      child:  MaterialApp(
           navigatorKey: NavigationService.instance.navigationKey,
           localizationsDelegates: context.localizationDelegates,
           supportedLocales: context.supportedLocales,
           locale: context.locale,
            theme: ThemeClass.lightTheme,
            darkTheme: ThemeClass.darkTheme,
            themeMode: _themeMode,
            debugShowCheckedModeBanner: false,
            routes: routes,
            title: 'Ospic',
            home: SplashScreen(),
          )

    );
  }
  
}