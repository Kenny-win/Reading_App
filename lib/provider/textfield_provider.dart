import 'package:flutter/material.dart';

class TextFieldProvider with ChangeNotifier {
  bool _isOnTap1 = false;
  bool get isOnTap1 => _isOnTap1;

  set isOnTap1(val) {
    _isOnTap1 = val;
    notifyListeners();
  }

  bool _isOnTap2 = false;
  bool get isOnTap2 => _isOnTap2;

  set isOnTap2(val) {
    _isOnTap2 = val;
    notifyListeners();
  }
  
  bool _isOnTap3 = false;
  bool get isOnTap3 => _isOnTap3;

  set isOnTap3(val) {
    _isOnTap3 = val;
    notifyListeners();
  }

  bool _isOnTap4 = false;
  bool get isOnTap4 => _isOnTap4;

  set isOnTap4(val) {
    _isOnTap4 = val;
    notifyListeners();
  }

  bool _isOnTap5 = false;
  bool get isOnTap5 => _isOnTap5;

  set isOnTap5(val) {
    _isOnTap5 = val;
    notifyListeners();
  }

  bool _isOnTap6 = false;
  bool get isOnTap6 => _isOnTap6;

  set isOnTap6(val) {
    _isOnTap6 = val;
    notifyListeners();
  }
}
