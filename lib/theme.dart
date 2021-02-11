import 'package:flutter/material.dart';
import 'package:yogaon/constants.dart';
import 'size_config.dart';

ThemeData theme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    primarySwatch: Colors.blue,
    appBarTheme: appBarTheme(),
    iconTheme: IconThemeData(color: Colors.black),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(
        fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),
    headline3: TextStyle(
        fontSize: 20, color: Colors.black, fontWeight: FontWeight.normal),
    headline4: TextStyle(
        fontSize: 15, color: Colors.black, fontWeight: FontWeight.normal),
    headline5: TextStyle(
        fontSize: 10, color: Colors.black, fontWeight: FontWeight.normal),
    headline6: TextStyle(
        fontSize: 8, color: Colors.grey[700], fontWeight: FontWeight.normal),
    bodyText2: TextStyle(
        fontSize: 13, color: Colors.grey[600], fontWeight: FontWeight.normal),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: BorderSide(color: kPrimaryColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    centerTitle: true,
  );
}
