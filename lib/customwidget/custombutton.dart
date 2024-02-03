import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class CustomButton extends StatelessWidget {
  String title;
  VoidCallback ontap;
  CustomButton({
    super.key,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52.h,
      width: 138.w,
      child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(backgroundColor: AppColor.primaryyellow),
          onPressed: ontap,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.h,
              fontWeight: FontWeight.w700,
              color: AppColor.primarywhite,
              fontFamily: AppFonts.manormafont,
            ),
          )),
    );
  }
}
