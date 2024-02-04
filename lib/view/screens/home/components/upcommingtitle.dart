import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class UpComingEventTitle extends StatelessWidget {
  const UpComingEventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Events',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontFamily: AppFonts.manormafont,
                    fontWeight: FontWeight.w700),
              ),
              Column(
                children: [
                  Text(
                    'See more',
                    style: TextStyle(
                        fontSize: 16.sp, color: AppColor.primaryyellow),
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
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 44.h,
            width: 274.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.r),
                border: Border.all(color: AppColor.primaryyellow)),
            child: Padding(
              padding: EdgeInsets.only(
                  top: 11.h, bottom: 11.h, left: 20.h, right: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcomming Events Calendar',
                    style: TextStyle(
                        fontFamily: AppFonts.manormafont,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.h,
                        color: AppColor.primaryyellow),
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: AppColor.primaryyellow,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
