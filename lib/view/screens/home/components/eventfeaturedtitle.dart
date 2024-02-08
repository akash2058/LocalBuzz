import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class EventFeaturedTitle extends StatelessWidget {
  const EventFeaturedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 17.5.w, vertical: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Event Featured ADS',
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
    );
  }
}
