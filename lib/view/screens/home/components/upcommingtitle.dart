import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/customwidget/customarrowbutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';
import 'package:localbuzz/view/screens/home/components/eventcalendar.dart';

class UpComingEventTitle extends StatelessWidget {
  const UpComingEventTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.5.w, right: 17.5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomDivider(),
          SizedBox(
            height: 32.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Events', style: titleStyle),
              Column(
                children: [
                  Text('See more', style: seemorestyle),
                  Container(
                    height: 1,
                    width: 72.w,
                    color: AppColor.primaryyellow,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  LeftArrowCircleButton(onTap: () {}),
                  SizedBox(
                    width: 16.w,
                  ),
                  RightArrowCircleButton(onTap: () {}),
                ],
              ),
              const EventCalendar()
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
        ],
      ),
    );
  }
}
