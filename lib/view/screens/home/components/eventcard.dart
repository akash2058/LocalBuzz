import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class EventCard extends StatelessWidget {
  EventCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
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
              padding: EdgeInsets.only(top: 18.h, left: 16.h, right: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '27 FEB, 2020',
                        style: TextStyle(
                          fontFamily: AppFonts.manormafont,
                          fontWeight: FontWeight.w400,
                          fontSize: 14.h,
                        ),
                      ),
                      Text(
                        'Dallas, Texas',
                        style: TextStyle(
                            fontSize: 14.h,
                            fontFamily: AppFonts.manormafont,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    '3rd Annual Ladies on Ice Fishing Adventure',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppFonts.manormafont,
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    'Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae',
                    style: TextStyle(
                        fontSize: 16.sp, fontFamily: AppFonts.manormafont),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(title: 'ReadMore', ontap: () {}),
                  SizedBox(
                    height: 18.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
