import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class LocalBuzzLogo extends StatelessWidget {
  const LocalBuzzLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: 166.w,
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.beelogo))),
    );
  }
}
