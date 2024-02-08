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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.5.w),
        child: Row(
          children: List.generate(
              5,
              (index) => CustomCard(
                  date: '27 JAN, 2020',
                  icon: Icons.location_pin,
                  location: 'Sir Winston ',
                  country: 'Churchill Park',
                  time: '01:00 PM - 03:00 PM',
                  image: AppImages.picone,
                  description:
                      'Matinee Movie at the Plamondon Festival Centre Theatre January 27th at 1:00. Concession will be open',
                  onpress: () {},
                  title: 'Leo Matinee Movie at the Plam...')),
        ),
      ),
    );
  }
}
