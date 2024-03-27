import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class ProfileHead extends StatelessWidget {
  const ProfileHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 116.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40.r),
              bottomLeft: Radius.circular(40.r)),
          image: const DecorationImage(
              fit: BoxFit.cover, image: AssetImage(AppImages.headerimg))),
      child: Padding(
        padding: EdgeInsets.only(top: 19.h, left: 16.h),
      ),
    );
  }
}
