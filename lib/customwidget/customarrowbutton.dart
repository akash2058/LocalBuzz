import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class RightArrowCircleButton extends StatelessWidget {
  VoidCallback onTap;
  RightArrowCircleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34.h,
        width: 34.w,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColor.primaryyellowlight),
        child: Padding(
          padding: EdgeInsets.only(
              left: 12.6.w, right: 11.w, top: 11.w, bottom: 11.w),
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 12.h,
            color: AppColor.primarywhite,
          ),
        ),
      ),
    );
  }
}

class LeftArrowCircleButton extends StatelessWidget {
  VoidCallback onTap;
  LeftArrowCircleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 34.h,
        width: 34.w,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: AppColor.primaryyellowlight),
        child: Padding(
          padding: EdgeInsets.only(
              left: 12.6.w, right: 11.w, top: 11.w, bottom: 11.w),
          child: Icon(
            Icons.arrow_back_ios,
            size: 12.h,
            color: AppColor.primarywhite,
          ),
        ),
      ),
    );
  }
}