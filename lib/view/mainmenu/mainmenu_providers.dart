import 'package:flutter/material.dart';
import 'package:localbuzz/view/screens/cart/cart.dart';
import 'package:localbuzz/view/screens/chat/messages.dart';
import 'package:localbuzz/view/screens/home/home.dart';
import 'package:localbuzz/view/screens/profile/profile.dart';

class MainMenuProvider extends ChangeNotifier {
  int currenttab = 0;

  List<Widget> screens = [
    HomeScreen(),
    CartScreen(),
    ChatScreen(),
    ProfileScreen()
  ];
}
