import 'dart:async';

import 'package:stacked/stacked.dart';

class ForgotPasswordModelView extends BaseViewModel {
  bool? _timerRunning;
  bool get timerRunning => _timerRunning!;
  int get seconds => _seconds;
  int _seconds = 60;

  void startTime() {
    _timerRunning = true;

    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        timer.cancel();

        _seconds = 60;
        _timerRunning = false;
      } else {
        _seconds--;
        notifyListeners();
      }
    });

    //notifyListeners();
  }
}
