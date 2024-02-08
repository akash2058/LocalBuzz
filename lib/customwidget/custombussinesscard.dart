import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

// ignore: must_be_immutable
class BussinessCard extends StatelessWidget {
  String title;
  String img;
  String description;
  BussinessCard(
      {super.key,
      required this.title,
      required this.img,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 376.w,
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 240.h,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24.r)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.r),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                    width: MediaQuery.sizeOf(context).width,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 3.5.w, right: 9.5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.manrope(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColor.primarylightblack),
                  ),
                  SizedBox(
                    height: 16.h,
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
                  CustomButton(
                      textcolor: AppColor.primarywhite,
                      backgroundcolor: AppColor.primaryyellow,
                      title: 'Readmore',
                      ontap: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
