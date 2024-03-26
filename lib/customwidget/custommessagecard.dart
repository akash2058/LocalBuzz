import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

import '../view/screens/chat/components/userprofileimageicon.dart';

class CustomChatCard extends StatelessWidget {
  String name;
  String message;
  String numberofchat;
  String duration;
  String img;
  VoidCallback onTap;
  CustomChatCard(
      {super.key,
      required this.name,
      required this.message,
      required this.numberofchat,
      required this.duration,
      required this.onTap,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 86.h,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColor.secondarylightgrey),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 3.h, bottom: 3.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserProfileImage(
                image: img,
                icon: Icon(
                  Icons.circle,
                  size: 16.h,
                  color: AppColor.primarygreen,
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: eventitlestyle,
                    ),
                    SizedBox(height: 5.h), // Add some vertical spacing
                    Text(message,
                        overflow: TextOverflow.ellipsis, // Handle text overflow
                        style: subtitlestyle),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    duration,
                    style: durationstyle,
                  ),
                  SizedBox(height: 5.h),
                  Container(
                    height: 31.h,
                    width: 31.h,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: AppColor.primaryyellow),
                    child: Center(
                      child: Text(
                        numberofchat,
                        style: durationtextstyle,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
