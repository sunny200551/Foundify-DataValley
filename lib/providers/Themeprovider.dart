import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier{
  bool isDark = false;

  void toggleTheme(){
    isDark = !isDark;
    notifyListeners();
  }
}