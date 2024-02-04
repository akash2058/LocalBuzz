import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class EventFeaturedTitle extends StatelessWidget {
  const EventFeaturedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Event Featured ADS',
            style: TextStyle(
                fontSize: 24.sp,
                fontFamily: AppFonts.manormafont,
                fontWeight: FontWeight.w700),
          ),
          Column(
            children: [
              Text(
                'See more',
                style:
                    TextStyle(fontSize: 16.sp, color: AppColor.primaryyellow),
              ),
              Container(
                height: 1,
                width: 72.w,
                color: AppColor.primaryyellow,
              )
            ],
          )
        ],
      ),
    );
  }
}
