import 'package:ets_rider/screen/ui/bookings/bookings_view.dart';
import 'package:ets_rider/screen/ui/chat/chat_detail.dart/chat_detail_view.dart';
import 'package:ets_rider/screen/ui/forgot_password/create_new_password_view.dart';
import 'package:ets_rider/screen/ui/forgot_password/forgot_password_otp_view.dart';
import 'package:ets_rider/screen/ui/forgot_password/forgot_password_view.dart';
import 'package:ets_rider/screen/ui/home/home_view.dart';
import 'package:ets_rider/screen/ui/inbox/inbox_view.dart';
import 'package:ets_rider/screen/ui/login/login_view.dart';
import 'package:ets_rider/screen/ui/navbar/navbar_view.dart';
import 'package:ets_rider/screen/ui/notification/notification_view.dart';
import 'package:ets_rider/screen/ui/profile/edit_profile/edit_profile_view.dart';
import 'package:ets_rider/screen/ui/profile/profile/profile_view.dart';
import 'package:ets_rider/screen/ui/signUp/create_accountForm_view.dart';
import 'package:ets_rider/screen/ui/signUp/get_you_in.dart';
import 'package:ets_rider/screen/ui/signUp/upload_picture_view.dart';
import 'package:ets_rider/screen/ui/special_offers/special_offers_view.dart';
import 'package:ets_rider/screen/ui/transaction/transaction_history/transaction_history_view.dart';
import 'package:ets_rider/screen/ui/wallet/add_new_card/add_new_card_view.dart';
import 'package:ets_rider/screen/ui/wallet/topUp_wallet/topUp_wallet_view.dart';
import 'package:ets_rider/screen/ui/wallet/topUpwithCardView/topUpwithCard_view.dart';
import 'package:ets_rider/screen/ui/wallet/wallet_view.dart';
import 'package:ets_rider/utils/theme_manager.dart';
import 'package:ets_rider/utils/themes.dart';
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
        home: UberFrontPage());
  }
}
