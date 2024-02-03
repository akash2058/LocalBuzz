import 'package:flutter/material.dart';
import 'package:localbuzz/view/screens/home.dart';
import 'package:localbuzz/view/screens/messages.dart';
import 'package:localbuzz/view/screens/profile.dart';
import 'package:localbuzz/view/screens/search.dart';

class AppController extends ChangeNotifier {
  int currenttab = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    MessageScreen(),
    ProfileScreen()
  ];
}
