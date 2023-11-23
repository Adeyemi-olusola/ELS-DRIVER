import 'package:ets_driver/screen/ui/bookings/bookings_view.dart';
import 'package:ets_driver/screen/ui/home/home_view.dart';
import 'package:ets_driver/screen/ui/inbox/inbox_view.dart';
import 'package:ets_driver/screen/ui/profile/profile/profile_view.dart';
import 'package:ets_driver/screen/ui/wallet/wallet_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NavigationBarViewModel extends BaseViewModel {
  final List<String> _navbarIconString = [
    'assets/navbar/Vector (12).svg',
    'assets/navbar/Vector (13).svg',
    'assets/navbar/Vector (14).svg',
   
    'assets/navbar/Vector (15).svg',
    'assets/navbar/Vector.svg'
  ];

  final List<String> _navbarText = [
    'Home',
    'Bookings',
    'Inbox',
    'Wallet',
    'Profile',
  ];
  final List<Widget> _widgetList = [
     MyHomePage(),
    const BookingView(),
    const InboxView(),
   
    const WalletView(),
     const ProfileView(),
  ];

  List<Widget> get widgetList => _widgetList;

  List<String> get navbarIconString => _navbarIconString;
  List<String> get navbarText => _navbarText;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  void getCurrrentIndex(int index) {
    _currentIndex = index;
    // _currentWidget = _widgetList[index];
    notifyListeners();
  }

  // Widget get currentWidget => _currentWidget;
}
