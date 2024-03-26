import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class MenuButton extends StatelessWidget {
  final VoidCallback onTap;
  const MenuButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:
            EdgeInsets.only(left: 14.w, top: 15.h, bottom: 15.h, right: 14.h),
        decoration: const BoxDecoration(
            color: AppColor.primarywhite, shape: BoxShape.circle),
        child: Image.asset(
          height: 16.h,
          AppImages.menu,
        ),
      ),
    );
  }
}
