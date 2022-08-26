import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ExampleThreeProvider with ChangeNotifier {
  ThemeMode _theme = ThemeMode.dark;

  ThemeMode get() => _theme;

  void set(ThemeMode theme) {
    _theme = theme;
    notifyListeners();
  }

}
