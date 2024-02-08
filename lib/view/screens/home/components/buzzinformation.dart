import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class BuzzInformation extends StatelessWidget {
  const BuzzInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your local Buzz all Here!',
            style: GoogleFonts.manrope(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
                color: AppColor.primarylightblack),
          ),
          SizedBox(
            height: 16.sp,
          ),
          Text(
            "It's a new year! What do we have planned?",
            style: GoogleFonts.manrope(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.lightblack),
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            'All local content. Keep you up to date on events & fundraisers. Business information & promotions.',
            style: GoogleFonts.manrope(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColor.lightblack),
          ),
          SizedBox(
            height: 28.h,
          ),
          CustomDivider()
        ],
      ),
    );
  }
}
