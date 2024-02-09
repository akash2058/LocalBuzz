import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, menu, child) {
        return SafeArea(
          child: Scaffold(
              bottomNavigationBar: BottomAppBar(
                height: 93.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            menu.currenttab = 0;
                          });
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              AppImages.homeicon,
                              height: 18.h,
                              width: 18.w,
                              // ignore: deprecated_member_use
                              color: menu.currenttab == 0
                                  ? AppColor.primaryyellow
                                  : AppColor.primarygrey,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text('Home',
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: menu.currenttab == 0
                                      ? AppColor.primaryyellow
                                      : AppColor.primarygrey,
                                ))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            menu.currenttab = 1;
                          });
                        },
                        child: Column(
                          children: [
                            // ignore: deprecated_member_use
                            SvgPicture.asset(
                              AppImages.searchicon,
                              height: 18.h,
                              width: 18.w,
                              // ignore: deprecated_member_use
                              color: menu.currenttab == 1
                                  ? AppColor.primaryyellow
                                  : AppColor.primarygrey,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text('Search',
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: menu.currenttab == 1
                                      ? AppColor.primaryyellow
                                      : AppColor.primarygrey,
                                ))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            menu.currenttab = 2;
                          });
                        },
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.topRight,
                              children: [
                                Positioned.fill(
                                  top: -12.h,
                                  left: 10.w,
                                  child: Icon(
                                    Icons.circle,
                                    size: 10.h,
                                    color: AppColor.primaryyellow,
                                  ),
                                ),
                                SvgPicture.asset(
                                  AppImages.message,
                                  height: 18.h,
                                  width: 18.w,
                                  // ignore: deprecated_member_use
                                  color: menu.currenttab == 2
                                      ? AppColor.primaryyellow
                                      : AppColor.primarygrey,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text('Message',
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: menu.currenttab == 2
                                      ? AppColor.primaryyellow
                                      : AppColor.primarygrey,
                                ))
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            menu.currenttab = 3;
                          });
                        },
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              AppImages.profile,
                              height: 18.h,
                              width: 18.w,
                              // ignore: deprecated_member_use
                              color: menu.currenttab == 3
                                  ? AppColor.primaryyellow
                                  : AppColor.primarygrey,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            Text('Profile',
                                style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.sp,
                                  color: menu.currenttab == 3
                                      ? AppColor.primaryyellow
                                      : AppColor.primarygrey,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              body: menu.screens[menu.currenttab]),
        );
      },
    );
  }
}
