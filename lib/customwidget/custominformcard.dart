import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String img;
  String title;
  CustomCard({
    super.key,
    required this.img,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180.w,
      decoration: const BoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 185.w,
            width: 180.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.r),
                image:
                    DecorationImage(fit: BoxFit.fill, image: AssetImage(img))),
          ),
          SizedBox(
            height: 12.h,
          ),
          Text(
            title,
            style: eventitlestyle,
          ),
          SizedBox(
            height: 28.h,
          ),
          Column(
            children: [
              Text('Readmore', style: seemorestyle),
              Container(
                height: 1,
                width: 72.w,
                color: AppColor.primaryyellow,
              )
            ],
          )
        ],
      ),
    );
  }
}
