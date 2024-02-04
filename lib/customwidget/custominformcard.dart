import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class CustomCard extends StatelessWidget {
  String image;
  String location;
  String country;
  String date;

  String title;
  String description;
  VoidCallback onpress;

  CustomCard(
      {super.key,
      required this.image,
      required this.date,
      required this.location,
      required this.country,
      required this.description,
      required this.onpress,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.r)),
        child: Column(
          children: [
            Container(
              height: 223.h,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24.r),
                  image:  DecorationImage(
                      image: AssetImage(
                       image,
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18.h, left: 16.h, right: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            location,
                            style: TextStyle(
                              fontFamily: AppFonts.manormafont,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.h,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                country,
                                style: TextStyle(
                                  fontFamily: AppFonts.manormafont,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.h,
                                ),
                              ),
                              const Icon(Icons.location_on)
                            ],
                          ),
                        ],
                      ),
                      Text(
                        date,
                        style: TextStyle(
                            fontSize: 14.h, fontFamily: AppFonts.manormafont,fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppFonts.manormafont,
                    ),
                  ),
                  SizedBox(
                    height: 14.h,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        fontSize: 16.sp, fontFamily: AppFonts.manormafont),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(title: 'ReadMore', ontap: onpress),
                  SizedBox(
                    height: 18.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
