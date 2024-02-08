import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.5.w, right: 18.5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            elevation: 0,
            color: AppColor.primarywhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r)),
            child: Column(
              children: [
                Container(
                  height: 223.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.r),
                      image: const DecorationImage(
                          image: AssetImage(
                            AppImages.eventimg,
                          ),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 9.5.w, vertical: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '27 FEB, 2020',
                            style: GoogleFonts.manrope(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.lightblack),
                          ),
                          Text(
                            'Dallas, Texas',
                            style: GoogleFonts.manrope(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.lightblack),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        '3rd Annual Ladies on Ice Fishing Adventure',
                        style: GoogleFonts.manrope(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primarylightblack),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Text(
                        'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae',
                        style: GoogleFonts.manrope(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.lightblack),
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      CustomButton(
                          backgroundcolor: AppColor.primaryyellow,
                          textcolor: AppColor.primarywhite,
                          title: 'ReadMore',
                          ontap: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32.h,
          ),
          CustomDivider()
        ],
      ),
    );
  }
}
