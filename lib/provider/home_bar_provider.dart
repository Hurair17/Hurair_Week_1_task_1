import 'package:flutter/material.dart';

class HomeBarProvider with ChangeNotifier {
  var items = ['Warszawa', 'Peshawar', 'Lahore'];
  String? dropdownvalue = 'Warszawa';

  void setValue(int value) {
    print(items[value]);
    // return items[value];
    dropdownvalue = items[value];

    notifyListeners();
  }
}
