import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class HomeScreenHead extends StatelessWidget {
  const HomeScreenHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160.h,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        children: [
          Container(
            height: 116.h,
            width: MediaQuery.sizeOf(context).width,
            decoration: BoxDecoration(
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(AppImages.headerimg)),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40.r),
                    bottomRight: Radius.circular(40.r))),
            child: Padding(
              padding: EdgeInsets.all(11.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [],
                  ),
                  SvgPicture.asset(
                    AppImages.drawer,
                    height: 44.h,
                    width: 44.w,
                  )
                ],
              ),
            ),
          ),
          Positioned.fill(
            top: 91.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r)),
                color: const Color.fromRGBO(73, 80, 87, 1),
                child: TextFormField(
                  style: GoogleFonts.manrope(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColor.primarywhite),
                  decoration: InputDecoration(
                    hintText: 'What are you looking for?...',
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 10.h),
                      child: SvgPicture.asset(
                        // ignore: deprecated_member_use
                        color: AppColor.primarywhite,
                        width: 24.w,
                        AppImages.searchicon,
                        height: 24.h,
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                    hintStyle: GoogleFonts.manrope(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColor.primarywhite),
                    prefixIconConstraints: const BoxConstraints(),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
