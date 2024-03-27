import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customsearchfield.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/mainmenu/mainmenu_providers.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class HomeScreenHead extends StatelessWidget {
  Widget menu;
  HomeScreenHead({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Consumer<MainMenuProvider>(
      builder: (context, mainmenu, child) {
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
                        fit: BoxFit.cover,
                        image: AssetImage(AppImages.headerimg)),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40.r),
                        bottomRight: Radius.circular(40.r))),
                child: Padding(
                  padding: EdgeInsets.all(11.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [const Center(), menu],
                  ),
                ),
              ),
              Positioned.fill(
                top: 91.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomFormfield(
                    prefix: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Image.asset(
                        filterQuality: FilterQuality.high,
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
      },
    );
  }
}



// ignore: must_be_immutable
