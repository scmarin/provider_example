import 'package:flutter/material.dart';

class DataClass extends ChangeNotifier {
  int _x = 0;
  int get x => _x;
  int _y = 2;
  int get y => _y;
  void incrementX() {
    _x++;
    notifyListeners();
  }

  void decrementX() {
    _x--;
    notifyListeners();
  }
}
