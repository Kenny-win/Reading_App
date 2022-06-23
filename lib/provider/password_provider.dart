import "package:flutter/material.dart";

class PasswordProvider with ChangeNotifier {
  bool _isPress = true;

  bool get isPress => _isPress;

  set isPress(val) {
    _isPress = val;
    notifyListeners();
  }
}
