import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/screens/home/home.dart';
import 'package:localbuzz/view/screens/message/messages.dart';
import 'package:localbuzz/view/screens/profile/profile.dart';
import 'package:localbuzz/view/screens/search/search.dart';

class AppController extends ChangeNotifier {
  int currenttab = 0;
  int currentpage = 0;
  List<Widget> screens = [
    HomeScreen(),
    SearchScreen(),
    MessageScreen(),
    ProfileScreen()
  ];

  late PageController pageController;
  late Timer timer;
  List<String> sliderlist = [
    AppImages.sliderone,
    AppImages.slidertwo,
    AppImages.sliderthree
  ];
  List<String> imglist = [
    AppImages.directoryimgone,
    AppImages.directoryimgtwo,
    AppImages.directoryimgtwo
  ];
  List<String> titlelist = [
    'KidSport LLB Chapter',
    'Lac La Biche Massage Therapy',
    'Lac La Biche Massage Therapy',
  ];
}
