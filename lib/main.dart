import 'package:flutter/material.dart';
import 'package:yogaon/routes.dart';
import 'package:yogaon/screens/introduction/start_screen.dart';
import 'package:yogaon/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yogaon',
      theme: theme(),
      initialRoute: StartScreen.routeName,
      routes: routes,
    );
  }
}
