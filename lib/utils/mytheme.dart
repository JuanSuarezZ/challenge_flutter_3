import 'package:flutter/material.dart';

loadtheme() {
  return ThemeData.light().copyWith(
      accentColor: Color(0xff5563ff),
      indicatorColor: Colors.red[200],
      textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 25,
            fontFamily: 'Hack',
            fontWeight: FontWeight.bold,
            color: Colors.black),
        headline2: TextStyle(
            fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black54),
        headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.normal,
            color: Color(0xff5563ff)),
      ));
}
