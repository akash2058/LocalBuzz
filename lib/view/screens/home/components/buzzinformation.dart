import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class BuzzInformation extends StatelessWidget {
  const BuzzInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your local Buzz all Here!', style: titleStyle),
          SizedBox(
            height: 16.sp,
          ),
          Text("It's a new year! What do we have planned?",
              style: discriptionStyle),
          SizedBox(
            height: 15.h,
          ),
          Text(
              'All local content. Keep you up to date on events & fundraisers. Business information & promotions.',
              style: discriptionStyle),
          SizedBox(
            height: 28.h,
          ),
          CustomDivider()
        ],
      ),
    );
  }
}
