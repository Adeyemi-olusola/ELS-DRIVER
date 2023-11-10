import 'package:ets_rider/screen/ui/bookings/bookings_view.dart';
import 'package:ets_rider/screen/ui/chat/chat_detail.dart/chat_detail_view.dart';
import 'package:ets_rider/screen/ui/forgot_password/create_new_password_view.dart';
import 'package:ets_rider/screen/ui/forgot_password/forgot_password_otp_view.dart';
import 'package:ets_rider/screen/ui/forgot_password/forgot_password_view.dart';
import 'package:ets_rider/screen/ui/inbox/inbox_view.dart';
import 'package:ets_rider/screen/ui/login/login_view.dart';
import 'package:ets_rider/screen/ui/notification/notification_view.dart';
import 'package:ets_rider/screen/ui/special_offers/special_offers_view.dart';
import 'package:ets_rider/utils/theme_manager.dart';
import 'package:ets_rider/utils/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

ThemeManager _themeManager = ThemeManager();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: defaultTheme,
        themeMode: _themeManager.themeMode,
        home: ChatScreen());
  }
}
