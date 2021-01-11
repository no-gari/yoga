import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';
import 'package:yogaon/screens/introduction/start_screen.dart';
import 'package:yogaon/screens/yogaon/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
          headline2: TextStyle(
              fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          headline3: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
          headline4: TextStyle(
              fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
          headline5: TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal),
          headline6: TextStyle(
              fontSize: 8,
              color: Colors.grey[700],
              fontWeight: FontWeight.normal),
        ),
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          centerTitle: true,
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      home: HomeScreen(),
    );
  }
}
