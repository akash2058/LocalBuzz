import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/custom_pagetransition.dart';
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
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context, CustomPageRoute(child: const MainMenu()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.splashlogo,
          height: 101.h,
          width: 291.w,
        ),
      ),
    );
  }
}
