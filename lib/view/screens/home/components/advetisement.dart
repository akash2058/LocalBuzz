import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomDivider(),
        SizedBox(
          height: 32.h,
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(AppImages.reminder))),
          child: Padding(
            padding: EdgeInsets.only(
                top: 37.h, left: 16.w, right: 16.w, bottom: 37.h),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      textAlign: TextAlign.center,
                      'Want to see your event on our calendar? Simply sign-up, verify your email (check your spam folder)',
                      style: GoogleFonts.manrope(
                        fontSize: 20.sp,
                        color: AppColor.primarywhite,
                        fontWeight: FontWeight.w600,
                      )),
                  SizedBox(
                    height: 17.h,
                  ),
                  CustomButton(
                      backgroundcolor: AppColor.primarywhite,
                      title: 'Sign Up',
                      textcolor: AppColor.primaryyellow,
                      ontap: () {}),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
