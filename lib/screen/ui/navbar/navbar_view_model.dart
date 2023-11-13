import 'package:ets_rider/screen/ui/bookings/bookings_view.dart';
import 'package:ets_rider/screen/ui/profile/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class NavigationBarViewModel extends BaseViewModel {
  List<String> _navbarIconString = [
    'assets/navbar/Vector (12).svg',
    'assets/navbar/Vector (13).svg',
    'assets/navbar/Vector (14).svg',
    'assets/navbar/Vector (14).svg',
    'assets/navbar/Vector (15).svg',
  ];

  List<String> _navbarText = [
    'Home',
    'Bookings',
    'Inbox',
    'Wallet',
    'Profile',
  ];
  List<Widget> _widgetList = [
    ProfileWidget(),
    BookingView(),
    ProfileWidget(),
    ProfileWidget(),
    ProfileWidget(),
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
