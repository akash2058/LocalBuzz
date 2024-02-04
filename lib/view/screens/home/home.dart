import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/customwidget/custombussinesscard.dart';
import 'package:localbuzz/customwidget/customcontainer.dart';
import 'package:localbuzz/customwidget/custominformcard.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/screens/home/components/advetisement.dart';
import 'package:localbuzz/view/screens/home/components/bussinesslist.dart';
import 'package:localbuzz/view/screens/home/components/bussinesstitle.dart';
import 'package:localbuzz/view/screens/home/components/buzzinformation.dart';
import 'package:localbuzz/view/screens/home/components/directorylist.dart';
import 'package:localbuzz/view/screens/home/components/directorytitle.dart';
import 'package:localbuzz/view/screens/home/components/eventcard.dart';
import 'package:localbuzz/view/screens/home/components/eventfeaturedtitle.dart';
import 'package:localbuzz/view/screens/home/components/homescreenhead.dart';
import 'package:localbuzz/view/screens/home/components/homeslider.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/screens/home/components/newupcomingeventtitle.dart';
import 'package:localbuzz/view/screens/home/components/newupcomingeventlist.dart';
import 'package:localbuzz/view/screens/home/components/newupcominglist.dart';
import 'package:localbuzz/view/screens/home/components/upcomingeventlist.dart';
import 'package:localbuzz/view/screens/home/components/upcommingtitle.dart';

import 'package:provider/provider.dart';

import 'components/itemlist.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return Scaffold(
          floatingActionButton: CustomButton(
              backgroundcolor: AppColor.primaryyellow,
              textcolor: AppColor.primarywhite,
              title: 'POST ADS',
              ontap: () {}),
          body: SingleChildScrollView(
            physics:
                const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
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
                const EventCard(),
                const DirectoryTitle(),
                const DirectoryList(),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                SizedBox(
                  height: 37.h,
                ),
                const AdvertisementCard(),
                SizedBox(
                  height: 32.h,
                ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const ItemList(),
                SizedBox(
                  height: 32.h,
                ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const BussinessTitle(),
                SizedBox(
                  height: 32.h,
                ),
                const BussinessList(),
                SizedBox(
                  height: 32.h,
                ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const UpComingEventTitle(),
                const UpcomingEventList(),
                SizedBox(
                  height: 32.h,
                ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                ),
                SizedBox(
                  height: 32.h,
                ),
                const NewUpcomingEventTitle(),
                const NewUpCoimingEventList(),
                const NewUpComingList(),
              ],
            ),
          ),
        );
      },
    );
  }
}
