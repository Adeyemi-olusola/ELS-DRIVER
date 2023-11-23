import 'package:ets_driver/screen/ui/home/home_view.dart';
import 'package:ets_driver/screen/ui/navbar/navbar_view.dart';
import 'package:ets_driver/screen/ui/signUp/onboarding_reg/register_under_business/register_under_business.dart';
import 'package:ets_driver/screen/ui/splashscreen/splashscreen_view.dart';
import 'package:ets_driver/utils/theme_manager.dart';
import 'package:ets_driver/utils/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: defaultTheme,
        debugShowCheckedModeBanner: false,
        themeMode: _themeManager.themeMode,
        home:  SplashScreen());
  }
}
