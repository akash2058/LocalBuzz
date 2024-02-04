import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/customwidget/custominformcard.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:provider/provider.dart';

class DirectoryList extends StatelessWidget {
  const DirectoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Directory Featured ADS',
                      style: TextStyle(
                          fontSize: 24.sp,
                          fontFamily: AppFonts.manormafont,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'See more',
                      style: TextStyle(
                          fontSize: 16.sp,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColor.primaryyellow,
                          color: AppColor.primaryyellow),
                    ),
                  ],
                ),
                Row(
                  children: List.generate(
                      state.imglist.length,
                      (index) => CustomCard(
                          image: state.imglist[index],
                          date: '27 FEB, 2020',
                          location: 'Sir Winston',
                          country: 'Churchill Park',
                          description:
                              'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id esExcepteur , ',
                          onpress: () {},
                          title: state.titlelist[index])),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}