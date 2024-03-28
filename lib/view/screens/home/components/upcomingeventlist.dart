import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/screens/home/components/eventcard.dart';

class UpcomingEventList extends StatelessWidget {
  const UpcomingEventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.5.w),
        child: Row(
            children: List.generate(
                5,
                (index) => Row(
                      children: [
                        EventCard(
                          date: '27 FEB, 2020',
                          img: AppImages.pictwo,
                          location: 'Sir Winston Churchill Park',
                          title:
                              'Leo Matinee Movie at the Plamondon Festival Centre Theatre',
                          onTap: () {},
                        ),
                        SizedBox(
                          width: 22.w,
                        )
                      ],
                    ))),
      ),
    );
  }
}
