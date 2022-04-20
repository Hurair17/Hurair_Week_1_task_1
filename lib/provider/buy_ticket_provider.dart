import 'package:flutter/material.dart';

class BuyTicketProvider with ChangeNotifier {
  var items = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Friday',
    'Saturday'
  ];
  String? dropdownvalue = 'Sunday';

  void setDay(int value) {
    dropdownvalue = items[value];
    notifyListeners();
  }
}
