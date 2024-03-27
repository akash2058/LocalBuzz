import 'dart:async';

import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/customwidget/custom_pagetransition.dart';
import 'package:localbuzz/view/mainmenu/main_menu.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashscreen();
  }

  void splashscreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context, SplashRoute(child: MainMenu()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(AppImages.splashlogo))),
    ));
  }
}
