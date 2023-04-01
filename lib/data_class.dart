import 'package:flutter/material.dart';

class DataClass extends ChangeNotifier {
  int _x = 0; // store counter value
  int get x => _x;
  void incrementX() {
    // add 1 to x
    _x++;
    notifyListeners(); // rebuild UI
  }

  void decrementX() {
    // subtract 1 from x
    _x--;
    notifyListeners();
  }
}
