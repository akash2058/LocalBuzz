import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class EventCalendar extends StatelessWidget {
  const EventCalendar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.r),
          border: Border.all(color: AppColor.primaryyellow)),
      child: Padding(
        padding:
            EdgeInsets.only(left: 20.w, top: 11.h, bottom: 11.h, right: 10.w),
        child: Row(
          children: [
            Text(
              'Upcomming Events Calendar',
              style: GoogleFonts.manrope(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primaryyellow),
            ),
            SizedBox(
              width: 10.w,
            ),
          
          ],
        ),
      ),
    );
  }
}
