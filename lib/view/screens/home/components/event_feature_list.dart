import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custom_pagetransition.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/screens/home/components/eventcard.dart';
import 'package:localbuzz/view/screens/home/home_landingpages/whatshappening_page.dart';

class EventFeaturedAdsList extends StatelessWidget {
  const EventFeaturedAdsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: Row(
              children: List.generate(
                  5,
                  (index) => Row(
                        children: [
                          EventCard(
                            date: '27 FEB, 2020',
                            img: AppImages.eventimg,
                            location: 'Sir Winston Churchill Park',
                            title: '3rd Annual Ladies on Ice fishing Adventure',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  CustomPageRoute(
                                      child: WhatsHappeningLandingPage()));
                            },
                          ),
                          SizedBox(
                            width: 22.w,
                          )
                        ],
                      ))),
        ));
  }
}
