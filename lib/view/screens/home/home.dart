import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/screens/home/components/advetisement.dart';
import 'package:localbuzz/view/screens/home/components/buzzinformation.dart';
import 'package:localbuzz/view/screens/home/components/directorylist.dart';
import 'package:localbuzz/view/screens/home/components/directorytitle.dart';
import 'package:localbuzz/view/screens/home/components/event_feature_list.dart';
import 'package:localbuzz/view/screens/home/components/eventfeaturedtitle.dart';
import 'package:localbuzz/view/screens/home/components/homescreenhead.dart';
import 'package:localbuzz/view/screens/home/components/homeslider.dart';
import 'package:localbuzz/customwidget/custombutton.dart';

import 'package:localbuzz/view/screens/home/components/upcomingeventlist.dart';
import 'package:localbuzz/view/screens/home/components/upcommingtitle.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return Scaffold(
          backgroundColor: AppColor.backgroudcolor,
          floatingActionButton: CustomButton(
              backgroundcolor: AppColor.primaryyellow,
              textcolor: AppColor.primarywhite,
              title: 'POST ADS',
              ontap: () {}),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenHead(),
                SizedBox(
                  height: 20.h,
                ),
                const HomeSlider(),
                const BuzzInformation(),
                const EventFeaturedTitle(),
                const EventFeaturedAdsList(),
                SizedBox(
                  height: 32.h,
                ),
                const UpComingEventTitle(),
                const UpcomingEventList(),
                SizedBox(
                  height: 32.h,
                ),
                const AdvertisementCard(),
                SizedBox(
                  height: 32.h,
                ),
                const DirectoryTitle(),
                DirectoryList()
              ],
            ),
          ),
        );
      },
    );
  }
}
