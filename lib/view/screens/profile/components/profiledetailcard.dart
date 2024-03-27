import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class ProfileDetailCard extends StatelessWidget {
  const ProfileDetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          Container(
            width: 100.w,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.user))),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Profiles',
                  style: screentitlestyle,
                ),
                Text(
                  'Cooper, Kristin',
                  style: tilestyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
