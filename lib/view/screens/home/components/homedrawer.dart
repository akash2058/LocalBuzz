import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customexpansiontile.dart';
import 'package:localbuzz/customwidget/customtile.dart';
import 'package:localbuzz/view/constraints/appicons.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 294.w,
      child: Padding(
        padding: EdgeInsets.only(left: 9.w, right: 16.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 44.h,
                    width: 137.w,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(AppImages.beelogo))),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.close,
                        size: 24.h,
                      )),
                ],
              ),
              SizedBox(
                height: 42.h,
              ),
              CustomTile(
                title: 'Home',
              ),
              CustomExpansionTile(
                title: 'Directory',
                onTap: () {},
                children: [
                  CustomTile(
                    title: 'Bussiness',
                  ),
                  CustomTile(
                    title: 'Home Bussiness',
                  ),
                  CustomTile(
                    title: 'Non - Profit',
                  ),
                  CustomTile(
                    title: 'Directory Featured',
                  ),
                ],
              ),
              CustomExpansionTile(
                title: 'What’s up',
                onTap: () {},
                children: [
                  CustomTile(
                    title: 'Event',
                  ),
                  CustomTile(
                    title: 'Fundraisers',
                  ),
                  CustomTile(
                    title: 'Event Featured',
                  ),
                  CustomTile(
                    title: 'Fundraiser Featured',
                  ),
                ],
              ),
              CustomExpansionTile(
                title: 'Flyers & Menu',
                onTap: () {},
                children: [
                  CustomTile(
                    title: 'Flyers',
                  ),
                  CustomTile(
                    title: 'Menu',
                  ),
                ],
              ),
              CustomExpansionTile(
                title: 'OTher buzz',
                onTap: () {},
                children: [
                  CustomTile(
                    title: 'Help Wanted',
                  ),
                  CustomTile(
                    title: 'More Buzz',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
