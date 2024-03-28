import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/customdivider.dart';
import 'package:localbuzz/customwidget/customfavoritecard.dart';
import 'package:localbuzz/customwidget/customhead.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';
import 'package:localbuzz/view/screens/home/components/homedrawer.dart';

class MyFavourite extends StatelessWidget {
  const MyFavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(title: 'My Favourites'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 16.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 32.h,
                      ),
                      Text(
                        'My Favourites',
                        style: titleStyle,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Recently Added',
                            style: textstyle,
                          ),
                          SizedBox(
                            width: 12.w,
                          ),
                          Icon(
                            Icons.history,
                            size: 17.h,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18.h,
                      ),
                      Column(
                        children: List.generate(
                          3,
                          (index) => Column(
                            children: [
                              CustomFavouriteCard(
                                img: AppImages.favbackground,
                                title: 'Business Automotive / Offroad',
                                date: 'November 28,2022',
                                details:
                                    'Off Road Rentals & Sales Off Road Rentals & Sales',
                              ),
                              SizedBox(
                                height: 32.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Customdivider(
                        text: 'SEE MORE',
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

