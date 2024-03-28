import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:localbuzz/view/constraints/svgicons.dart';

class Googlelogo extends StatelessWidget {
  const Googlelogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsets.all(8.sp),
        child: SvgPicture.asset(SvgIcons.google),
      ),
    );
  }
}
