import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class HomeProvider extends ChangeNotifier {
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
          curve: Curves.ease,
        );
      }
    });
  }

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
    'Kids Sport Lac La ',
    'Chef Tao’s REstaurant',
    'Funday Sunday',
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
