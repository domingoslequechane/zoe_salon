import 'package:flutter/material.dart';
import 'package:zoe/Modules/agenda/agenda_page.dart';
import 'package:zoe/Modules/agendar/agendar_page.dart';
import 'package:zoe/Modules/home/home_page.dart';
import 'package:zoe/Modules/splash/splash_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashPage(),
        '/home': (context) => HomePage(),
        '/agendar': (context) => AgendarPage(),
        '/agenda': (context) => AgendaPage(),
      },
    );
  }
}
