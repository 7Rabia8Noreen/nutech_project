import 'package:flutter/widgets.dart';

class DisabilityProvider with ChangeNotifier {
  bool _value = false;

  bool get value {
    return _value;
  }

  void checkedValue() {
    _value = !_value;
    notifyListeners();
  }
}
