import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/divider.dart';
import 'package:localbuzz/customwidget/custom_pagetransition.dart';
import 'package:localbuzz/customwidget/customtile.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';
import 'package:localbuzz/view/screens/profile/components/profiledetailcard.dart';
import 'package:localbuzz/view/screens/profile/components/profilehead.dart';
import 'package:localbuzz/view/screens/profile/profile_landingpages/edit_profile.dart';
import 'package:localbuzz/view/screens/profile/profile_landingpages/member_ship.dart';
import 'package:localbuzz/view/screens/profile/profile_landingpages/my_favourite.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileHead(),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileDetailCard(),
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Profile',
                    style: titleStyle,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  CustomDivider(),
                  CustomTile(
                    leading: Icon(
                      Icons.edit,
                      size: 24.h,
                    ),
                    title: 'Edit Profile',
                    onTap: () {
                      Navigator.push(
                          context, CustomPageRoute(child: const EditProfile()));
                    },
                  ),
                  CustomTile(
                    leading: Icon(
                      Icons.favorite_border,
                      size: 24.h,
                    ),
                    title: 'My Favourites',
                    onTap: () {
                      Navigator.push(
                          context, CustomPageRoute(child: const MyFavourite()));
                    },
                  ),
                  CustomTile(
                    leading: Icon(
                      Icons.card_membership,
                      size: 24.h,
                    ),
                    title: 'My Membership Details',
                    onTap: () {
                      Navigator.push(context,
                          CustomPageRoute(child: const MemberShipPage()));
                    },
                  ),
                  CustomTile(
                    leading: Icon(
                      Icons.help_outline,
                      size: 24.h,
                    ),
                    title: 'Help & Support',
                    onTap: () {},
                  ),
                  CustomTile(
                    leading: Icon(
                      Icons.logout,
                      size: 24.h,
                    ),
                    title: 'Logout',
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
