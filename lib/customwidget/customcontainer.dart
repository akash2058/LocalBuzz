import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class CustomContainer extends StatelessWidget {
  String date;
  String day;
  String events;
  String description;
  String image;
  VoidCallback ontap;

  CustomContainer({
    Key? key,
    required this.date,
    required this.day,
    required this.events,
    required this.description,
    required this.image,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(18.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 223.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(image),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 14.h,
                      fontFamily: AppFonts.manormafont,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        events,
                        style: TextStyle(
                          fontSize: 14.h,
                          fontFamily: AppFonts.manormafont,
                          fontWeight: FontWeight.bold,
                          color: AppColor.primaryyellow,
                        ),
                      ),
                      Container(
                        height: 1,
                        width: 154.w,
                        color: AppColor.primaryyellow,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                day,
                style: TextStyle(
                  fontSize: 20.sp,
                  fontFamily: AppFonts.manormafont,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              SizedBox(
                width: 340.w,
                child: Text(
                  description,
                  style: TextStyle(
                    fontSize: 16.h,
                    fontFamily: AppFonts.manormafont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              CustomButton(
                backgroundcolor: AppColor.primaryyellow,
                textcolor: AppColor.primarywhite,
                title: 'Readmore',
                ontap: ontap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
