import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customarrowbutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class WhatsHappeningTitle extends StatelessWidget {
  const WhatsHappeningTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 17.5.w,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('What’s Happening In ', style: titleStyle),
                  Text('Your Local Buzz', style: titleStyle),
                ],
              ),
              Column(
                children: [
                  Text('See more', style: seemorestyle),
                  Container(
                    height: 1,
                    width: 72.w,
                    color: AppColor.primaryyellowlight,
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 28.h,
          ),
          Row(
            children: [
              LeftArrowCircleButton(
                onTap: () {},
              ),
              SizedBox(
                width: 16.w,
              ),
              RightArrowCircleButton(
                onTap: () {},
              ),
            ],
          ),
          SizedBox(
            height: 28.h,
          ),
        ],
      ),
    );
  }
}
