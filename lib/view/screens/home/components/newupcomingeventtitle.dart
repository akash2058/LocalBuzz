import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class NewUpcomingEventTitle extends StatelessWidget {
  const NewUpcomingEventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.5.w, right: 17.5.w, bottom: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Text(
              'What’s Happening In\n Your Local Buzz',
              style: GoogleFonts.manrope(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primarylightblack),
            ),
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
