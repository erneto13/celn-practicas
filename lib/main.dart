import 'package:computo_nube/practica_03/home_page.dart';
import 'package:computo_nube/practica_04/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Practica 3',
      // home: HomePage(),
      title: 'Practica 4',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
