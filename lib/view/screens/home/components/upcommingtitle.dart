import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class UpComingEventTitle extends StatelessWidget {
  const UpComingEventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.5.w, right: 17.5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDivider(),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Events',
                style: GoogleFonts.manrope(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.primarylightblack),
              ),
              Column(
                children: [
                  Text(
                    'See more',
                    style: GoogleFonts.manrope(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryyellow),
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
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.r),
                border: Border.all(color: AppColor.primaryyellow)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcomming Events Calendar',
                    style: GoogleFonts.manrope(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primaryyellow),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.calendar_month_outlined,
                    color: AppColor.primaryyellow,
                    size: 24.h,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
