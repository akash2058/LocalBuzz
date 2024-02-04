import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customcontainer.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class NewUpCoimingEventList extends StatelessWidget {
  const NewUpCoimingEventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.all(16.h),
        child: Row(
            children: List.generate(
                5,
                (index) => CustomContainer(
                    date: '04 Jan, 2024',
                    day: 'Funday Sunday',
                    events: 'Local Event Promotions',
                    description:
                        'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu adipisci velit, sed qu',
                    image: AppImages.pictwo,
                    ontap: () {}))),
      ),
    );
  }
}
