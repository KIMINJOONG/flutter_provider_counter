import 'package:flutter/material.dart';

class CountProvier extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  add() {
    _count++;
    notifyListeners();
  }

  minus() {
    _count--;
    notifyListeners();
  }
}
