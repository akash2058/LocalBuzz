import 'package:flutter/material.dart';
import 'package:localbuzz/view/screens/cart/cart.dart';
import 'package:localbuzz/view/screens/chat/chatscreen.dart';
import 'package:localbuzz/view/screens/home/homescreen.dart';
import 'package:localbuzz/view/screens/profile/profile.dart';

class MainMenuProvider extends ChangeNotifier {
  int currenttab = 0;
  bool isDrawer = false;

  List<Widget> screens = [
    HomeScreen(),
    ChatScreen(),
    CartScreen(),
    ProfileScreen()
  ];
  void isDrawerOpen() {
   notifyListeners();
  isDrawer = !isDrawer;
  }
}
