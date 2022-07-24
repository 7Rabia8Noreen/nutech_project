import 'package:flutter/widgets.dart';

class MinorityProvider with ChangeNotifier {
  bool _value = false;

  bool get value {
    return _value;
  }

  void checkedValue() {
    _value = !_value;
    notifyListeners();
  }
}
