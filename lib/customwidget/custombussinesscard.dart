import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

class BussinessCard extends StatelessWidget {
  String title;
  String img;
  String description;
  BussinessCard(
      {super.key,
      required this.title,
      required this.img,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
        elevation: 10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 223.h,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image: DecorationImage(
                      image: AssetImage(img), fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.all(18.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: AppFonts.manormafont,
                        fontSize: 20.h,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 16.h,
                        fontFamily: AppFonts.manormafont,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                      textcolor: AppColor.primarywhite,
                      backgroundcolor: AppColor.primaryyellow,
                      title: 'ReadMore',
                      ontap: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
