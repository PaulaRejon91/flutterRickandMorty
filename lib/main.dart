import 'package:flutter/material.dart';
import 'package:rickandmorty/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displaySmall: TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      home: HomePage(title: 'Rick and Morty'),
    );
  }
}




 /* theme: ThemeData(
     brightness: Brightness.light,
      primaryColor: Colors.black,
      fontFamily: 'Georgia',
      textTheme: const TextTheme (
     headlinel: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white), // TextStyle
     headline2: TextStyle(  fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white), // TextStyle 
     headline3: TextStyle (fontSize: 24.0, color: Colors.white),
     bodyText2: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white), // TextStyle
    bodyText1: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w200, color: Colors.white), // TextStyle
     caption: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w100, color: Colors.grey), // TextStyle
      ),
     ),*/