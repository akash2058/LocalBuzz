import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/backbutton.dart';
import 'package:localbuzz/components/menu_button.dart';
import 'package:localbuzz/customwidget/customsearchfield.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomHeader extends StatelessWidget {
  String title;
  CustomHeader({super.key, required this.title});

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
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AppImages.reminder))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBackButton(),
                  Text(title, style: headertitle),
                  MenuButton(onTap: () {
                    Scaffold.of(context).openDrawer();
                  })
                ],
              ),
            ),
          ),
          // Positioned.fill(
          //   top: 91.h,
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 10.w),
          //     child: CustomFormfield(
          //       prefix: Padding(
          //         padding: EdgeInsets.symmetric(horizontal: 16.w),
          //         child: Image.asset(
          //           AppImages.searchicon,
          //           height: 16.h,
          //         ),
          //       ),
          //       hint: 'What are you looking for?...',
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
