import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

import '../view/constraints/appcolor.dart';

// ignore: must_be_immutable
class CustomSmallButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  IconData icons;
  Color backgroundcolor;
  CustomSmallButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.icons,
      required this.backgroundcolor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.only(left: 30.w, right: 30.w, top: 15.h, bottom: 15.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60.r), color: backgroundcolor),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
              size: 24.h,
              color: AppColor.primarywhite,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              text,
              style: buttonstyle,
            )
          ],
        ),
      ),
    );
  }
}
