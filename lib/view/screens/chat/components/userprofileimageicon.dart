// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class UserProfileImage extends StatelessWidget {
  String image;
  Widget icon;
  UserProfileImage({super.key, required this.image, required this.icon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68.h,
      width: 68.w,
      child: Stack(
        children: [
          Container(
            height: 58.h,
            width: 68.w,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.user)),
                shape: BoxShape.circle),
          ),
          Positioned(left: 5.w, child: icon),
        ],
      ),
    );
  }
}
