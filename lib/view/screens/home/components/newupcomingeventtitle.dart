import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class NewUpcomingEventTitle extends StatelessWidget {
  const NewUpcomingEventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Text(
              'What’s Happening In\n Your Local Buzz',
              style: TextStyle(
                  fontSize: 24.h,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppFonts.manormafont),
            ),
          ),
          Column(
            children: [
              Text(
                'See more',
                style:
                    TextStyle(fontSize: 16.sp, color: AppColor.primaryyellow),
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
    );
  }
}
