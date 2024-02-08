import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/screens/home/home.dart';
import 'package:localbuzz/view/screens/message/messages.dart';
import 'package:localbuzz/view/screens/profile/profile.dart';
import 'package:localbuzz/view/screens/search/search.dart';

class AppController extends ChangeNotifier {
  ScrollController scrollController = ScrollController();
  int currentpage = 0;
  void startAutoPageChange() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (currentpage < sliderlist.length - 1) {
        currentpage++;
      } else {
        currentpage = 0;
      }
      if (pageController.hasClients) {
        pageController.animateToPage(
          currentpage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  int currenttab = 0;

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
  List<String> imges = [
    AppImages.imgone,
    AppImages.imgtwo,
    AppImages.imgthree,
    AppImages.imgfour,
    AppImages.imgfive,
    AppImages.imgsix,
    AppImages.imgseven
  ];
}
