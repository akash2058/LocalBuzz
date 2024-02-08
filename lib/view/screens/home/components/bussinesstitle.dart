import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

class BussinessTitle extends StatelessWidget {
  const BussinessTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.w, right: 17.w),
      child: Column(
        children: [
          const CustomDivider(),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promote Your Business',
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
        ],
      ),
    );
  }
}
