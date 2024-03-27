import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding:
            EdgeInsets.only(left: 14.w, top: 15.h, bottom: 15.h, right: 14.h),
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: AppColor.primarywhite),
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 16.h,
        ),
      ),
    );
  }
}
