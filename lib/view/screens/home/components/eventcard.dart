import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';

import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class EventCard extends StatelessWidget {
  String img;
  String date;
  String location;
  String title;
  VoidCallback onTap;
  EventCard(
      {super.key,
      required this.date,
      required this.img,
      required this.location,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
          width: 180.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 185.h,
                width: 180.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.83.r),
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(img))),
              ),
              SizedBox(
                height: 12.h,
              ),
              Text(
                date,
                style: dateStyle,
              ),
              SizedBox(
                height: 12.h,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: 180.w,
                    child: Text(
                      location,
                      style: dateStyle,
                    ),
                  ),
                  Positioned(
                    left: 35.w,
                    bottom: 2.h,
                    child: Icon(
                      Icons.location_on,
                      color: AppColor.primarygrey,
                      size: 14.h,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(
                width: 180.w,
                child: Text(
                  title,
                  style: eventitlestyle,
                ),
              ),
            ],
          )),
    );
  }
}
