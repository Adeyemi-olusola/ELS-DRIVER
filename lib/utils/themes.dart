import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Color(0xfffebb1b),
  scaffoldBackgroundColor: Color(0xff181a20),
  appBarTheme: AppBarTheme(color:Color(0xff181a20), ),
 cardColor: Color(0xff1F222A),
  fontFamily: 'Urbanist',
  textTheme: TextTheme(
    displayLarge: TextStyle(fontSize: 36.0, fontWeight: FontWeight.w800 ,color: Colors.white),
    bodySmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400 , color: Colors.white),
  ),
);
