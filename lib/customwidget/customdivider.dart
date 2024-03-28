import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class Customdivider extends StatelessWidget {
  String text;
  Customdivider({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            height: 1.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(color: AppColor.dividercolor),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        Text(
          text,
          style: dividerstyle,
        ),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Container(
            height: 1.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(color: AppColor.dividercolor),
          ),
        ),
      ],
    );
  }
}
