import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class AdvertisementCard extends StatelessWidget {
  const AdvertisementCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration:
          const BoxDecoration(color: AppColor.primaryyellow),
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 37.h,
            ),
            Text(
              'Want to see your event on our calendar? Simply sign-up, verify your email (check your spam folder)',
              style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: AppFonts.manormafont,
                  fontWeight: FontWeight.w700,
                  color: AppColor.primarywhite),
            ),
            SizedBox(
              height: 17.h,
            ),
            CustomButton(
                backgroundcolor: AppColor.primarywhite,
                title: 'Sign Up',
                textcolor: AppColor.primaryyellow,
                ontap: () {}),
            SizedBox(
              height: 37.h,
            ),
            
          ],
        ),
      ),
    );
  }
}
