import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class Editbutton extends StatelessWidget {
  VoidCallback onTap;
   Editbutton({
    super.key,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 162.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7.r),
            border: Border.all(color: AppColor.primaryyellow)),
        padding:
            EdgeInsets.only(left: 20.h, top: 10.h, bottom: 10.h, right: 20.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.edit,
              color: AppColor.primaryyellow,
              size: 24.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(
              'Edit Profile',
              style: editbuttonstyle,
            )
          ],
        ),
      ),
    );
  }
}