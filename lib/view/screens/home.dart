import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/homescreenhead.dart';
import 'package:localbuzz/components/homeslider.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomButton(title: 'POST ADS', ontap: () {}),
      body: Column(
        children: [
          const HomeScreenHead(),
          SizedBox(
            height: 20.h,
          ),
          HomeSlider(),
        ],
      ),
    );
  }
}
