import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/menu_button.dart';
import 'package:localbuzz/customwidget/customtextformfield.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/screens/chat/components/userprofileimageicon.dart';

class ChatHead extends StatelessWidget {
  const ChatHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: 128.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(40.r),
                    bottomLeft: Radius.circular(40.r)),
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AppImages.adback))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 24.h,
                  ),
                  UserProfileImage(
                    image: AppImages.user,
                    icon: Icon(
                      Icons.circle,
                      size: 16.h,
                      color: AppColor.primarygreen,
                    ),
                  ),
                  MenuButton(onTap: () {
                    Scaffold.of(context).openDrawer();
                  })
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 91.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: CustomFormfield(
                prefix: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Image.asset(
                    AppImages.searchicon,
                    height: 16.h,
                  ),
                ),
                hint: 'What are you looking for?...',
              ),
            ),
          )
        ],
      ),
    );
  }
}

