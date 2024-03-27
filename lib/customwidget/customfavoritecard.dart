import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customsmallbutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

import '../view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomFavouriteCard extends StatelessWidget {
  String img;
  String title;
  String date;
  String details;
  CustomFavouriteCard(
      {super.key,
      required this.img,
      required this.title,
      required this.date,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(color: AppColor.secondarylightgrey)),
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 142.h,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(img))),
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              title,
              style: styles,
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              overflow: TextOverflow.clip,
              details,
              style: screentitlestyle,
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 24.h,
                  color: AppColor.primarygreen,
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  date,
                  style: monthstyle,
                ),
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomSmallButton(
                  onTap: () {},
                  text: 'View',
                  icons: Icons.visibility,
                  backgroundcolor: AppColor.primaryyellowlight,
                ),
                CustomSmallButton(
                  onTap: () {},
                  text: 'Delete',
                  icons: Icons.delete_outline,
                  backgroundcolor: AppColor.primaryred,
                ),
                SizedBox(
                  width: 62.w,
                )
              ],
            ),
            SizedBox(
              height: 18.h,
            ),
          ],
        ),
      ),
    );
  }
}
