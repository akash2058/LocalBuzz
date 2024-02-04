import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

import '../../../../customwidget/custominformcard.dart';

class UpcomingEventList extends StatelessWidget {
  const UpcomingEventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 545.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          padding: EdgeInsets.all(20.h),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CustomCard(
                date: '27 JAN, 2020',
                icon: Icons.location_pin,
                location: 'Sir Winston ',
                country: 'Churchill Park',
                time: '01:00 PM - 03:00 PM',
                image: AppImages.picone,
                description:
                    'Matinee Movie at the Plamondon Festival Centre Theatre January 27th at 1:00. Concession will be open',
                onpress: () {},
                title: 'Leo Matinee Movie at the Plam...');
          }),
    );
  }
}
