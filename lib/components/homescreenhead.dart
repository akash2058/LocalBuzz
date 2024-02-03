import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class HomeScreenHead extends StatelessWidget {
  const HomeScreenHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140.h,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Container(
            height: 116.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                color: AppColor.primaryyellow,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r))),
            child: Padding(
              padding: EdgeInsets.all(11.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppImages.beelogo,
                        height: 54.h,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 30.h,
                            width: 2.w,
                            color: AppColor.primaryyellowlight,
                          ),
                          Icon(
                            Icons.circle,
                            color: AppColor.primaryyellowlight,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 50.h,
                            width: 2.w,
                            color: AppColor.primaryyellowlight,
                          ),
                          Icon(
                            Icons.circle,
                            color: AppColor.primaryyellowlight,
                          )
                        ],
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    AppImages.drawer,
                    height: 44.h,
                  )
                ],
              ),
            ),
          ),
          Stack(
            fit: StackFit.passthrough,
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                  top: 90,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: AppColor.primarylightblack,
                        borderRadius: BorderRadius.circular(30.r)),
                    height: 45.h,
                    width: 330.w,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14.h,
                              fontFamily: AppFonts.manormafont,
                              fontWeight: FontWeight.w400,
                              color: AppColor.primarywhite),
                          hintTextDirection: TextDirection.ltr,
                          hintText: 'What are you looking for?...',
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: AppColor.primarywhite,
                          ),
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none)),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
