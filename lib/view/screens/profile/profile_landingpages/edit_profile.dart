import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/customwidget/customeditbutton.dart';
import 'package:localbuzz/customwidget/customhead.dart';
import 'package:localbuzz/customwidget/customtile.dart';
import 'package:localbuzz/view/screens/home/components/homedrawer.dart';

import 'package:localbuzz/view/screens/profile/components/profiledetailcard.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(),
        body: Column(
          children: [
            CustomHeader(title: 'Edit Profile'),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  ProfileDetailCard(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Editbutton(
                    onTap: () {},
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomDivider(),
                  CustomTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.h,
                    ),
                    title: 'Personal Details',
                    onTap: () {},
                  ),
                  CustomTile(
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 24.h,
                    ),
                    title: 'Password and Security',
                    onTap: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
