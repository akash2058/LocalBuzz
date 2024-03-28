import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

// ignore: must_be_immutable
class CustomContainer extends StatelessWidget {
  String date;
  String day;
  String events;
  String description;
  String image;
  VoidCallback ontap;

  CustomContainer({
    Key? key,
    required this.date,
    required this.day,
    required this.events,
    required this.description,
    required this.image,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 372.w,
      child: Card(
        child: Padding(
          padding: EdgeInsets.only(left: 18.w, right: 15.w, top: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(24.r),
                    child: Image.asset(image)),
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: GoogleFonts.manrope(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.lightblack),
                  ),
                  Column(
                    children: [
                      Text(
                        events,
                        style: GoogleFonts.manrope(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColor.primaryyellow),
                      ),
                      Container(
                        height: 1.h,
                        width: 175.w,
                        color: AppColor.primaryyellow,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                day,
                style: GoogleFonts.manrope(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColor.primarylightblack),
              ),
              SizedBox(
                height: 18.h,
              ),
              SizedBox(
                width: 340.w,
                child: Text(
                  description,
                  style: GoogleFonts.manrope(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.lightblack),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              CustomButton(
                backgroundcolor: AppColor.primaryyellow,
                textcolor: AppColor.primarywhite,
                title: 'Readmore',
                ontap: ontap, borderSide:  BorderSide.none,
              ),
              SizedBox(
                height: 18.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
