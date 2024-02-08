import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customcontainer.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class NewUpComingList extends StatelessWidget {
  const NewUpComingList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.only(left: 18.w, right: 15.w, top: 20.h),
        child: Row(
            children: List.generate(
                5,
                (index) => CustomContainer(
                    date: '04 Jan, 2024',
                    day: 'Festival of Speed',
                    events: 'Local Event Promotions',
                    description:
                        'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu adipisci velit, sed qu',
                    image: AppImages.picthree,
                    ontap: () {}))),
      ),
    );
  }
}
