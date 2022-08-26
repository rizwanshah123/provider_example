import 'package:flutter/foundation.dart';

class ExampleTwoProvider with ChangeNotifier {
  double _value = 1;

  double get() => _value;

  void set(double value) {
    _value = value;
    notifyListeners();
  }

}
