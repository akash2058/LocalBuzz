import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class BuzzInformation extends StatelessWidget {
  const BuzzInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(18.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your local Buzz all Here!',
            style: TextStyle(
                fontFamily: AppFonts.manormafont,
                fontWeight: FontWeight.w700,
                fontSize: 24.h),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "It's a new year! What do we have planned?",
            style: TextStyle(
                fontFamily: AppFonts.manormafont,
                fontWeight: FontWeight.w400,
                color: AppColor.primarylightgrey,
                fontSize: 16.h),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'All local content. Keep you up to date on events & fundraisers. Business information & promotions.',
            style: TextStyle(
                fontSize: 16.sp,
                fontFamily: AppFonts.manormafont,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 30.h,
          ),
          const Divider(),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Event Featured ADS',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: AppFonts.manormafont,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                'See more',
                style: TextStyle(
                    fontSize: 16.sp,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.primaryyellow,
                    color: AppColor.primaryyellow),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
