import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  bool isOpended = true;

  void isOpen() {
    notifyListeners();
    isOpended = !isOpended;
  }
}
