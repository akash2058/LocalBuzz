import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String image;
  String? location;
  String? country;
  String? date;
  IconData? icon;
  String title;
  String description;
  VoidCallback onpress;
  String? time;

  CustomCard(
      {super.key,
      required this.image,
      this.date,
      this.location,
      this.country,
      required this.description,
      this.time,
      this.icon,
      required this.onpress,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 368.75.w,
      child: Column(
        children: [
          Card(
            elevation: 0.5,
            color: AppColor.primarywhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r)),
            child: Column(
              children: [
                SizedBox(
                  height: 223.h,
                  width: 377.w,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.r)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(24.r),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.h, left: 16.h, right: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                location ?? '',
                                style: GoogleFonts.manrope(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.lightblack),
                              ),
                              Row(
                                children: [
                                  Text(
                                    country ?? '',
                                    style: GoogleFonts.manrope(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                        color: AppColor.lightblack),
                                  ),
                                  Icon(icon)
                                ],
                              ),
                            ],
                          ),
                          Text(
                            date ?? '',
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
                        title,
                        style: GoogleFonts.manrope(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primarylightblack),
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      Text(
                        description,
                        style: GoogleFonts.manrope(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.lightblack),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomButton(
                              textcolor: AppColor.primarywhite,
                              backgroundcolor: AppColor.primaryyellow,
                              title: 'ReadMore',
                              ontap: onpress),
                          Text(
                            time ?? '',
                            style: GoogleFonts.manrope(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: AppColor.lightblack),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
