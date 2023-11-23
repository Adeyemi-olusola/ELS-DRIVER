import 'package:flutter/material.dart';

ThemeData defaultTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xfffebb1b),
  scaffoldBackgroundColor: const Color(0xff181a20),
  iconTheme: const IconThemeData(color: Color(0xfffebb1b)),
  appBarTheme: const AppBarTheme(
    color: Color(0xff181a20),
  ),
  cardColor: const Color(0xff1F222A),
  fontFamily: 'Urbanist',
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontSize: 36.0, fontWeight: FontWeight.w800, color: Colors.white),
    bodySmall: TextStyle(
        fontSize: 14.0, fontWeight: FontWeight.w400, color: Colors.white),
  ),
);
