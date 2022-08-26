import 'package:flutter/widgets.dart';

import 'package:flutter/foundation.dart';

class ExampleOneProvider with ChangeNotifier {
  int _count = 0;

  int get() => _count;

  void setValue() {
    _count++;
    notifyListeners();
  }
}
