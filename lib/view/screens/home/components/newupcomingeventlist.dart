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
    return SizedBox(
      height: 544.h,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.all(16.h),
          itemCount: 5,
          itemBuilder: (context, index) {
            return CustomContainer(
                date: '04 Jan, 2024',
                day: 'Festival of Speed',
                events: 'Local Event Promotions',
                description:
                    'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu adipisci velit, sed qu',
                image: AppImages.picthree,
                ontap: () {});
          }),
    );
  }
}