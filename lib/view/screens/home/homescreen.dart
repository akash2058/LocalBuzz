import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/components/menu_button.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/mainmenu/mainmenu_providers.dart';
import 'package:localbuzz/view/screens/home/components/advetisement.dart';
import 'package:localbuzz/view/screens/home/components/buzzinformation.dart';
import 'package:localbuzz/view/screens/home/components/directorylist.dart';
import 'package:localbuzz/view/screens/home/components/directorytitle.dart';
import 'package:localbuzz/view/screens/home/components/event_feature_list.dart';
import 'package:localbuzz/view/screens/home/components/eventfeaturedtitle.dart';
import 'package:localbuzz/view/screens/home/components/homedrawer.dart';
import 'package:localbuzz/view/screens/home/components/homescreenhead.dart';
import 'package:localbuzz/view/screens/home/components/homeslider.dart';
import 'package:localbuzz/view/screens/home/components/itemlist.dart';
import 'package:localbuzz/view/screens/home/components/upcomingeventlist.dart';
import 'package:localbuzz/view/screens/home/components/upcommingtitle.dart';
import 'package:localbuzz/view/screens/home/components/whatshappeningtitle.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return Consumer<MainMenuProvider>(
          builder: (context, mainmenu, child) {
            return Scaffold(
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.miniCenterDocked,
              drawer: const AppDrawer(),
              backgroundColor: AppColor.backgroudcolor,
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Builder(builder: (context) {
                      return HomeScreenHead(menu: MenuButton(onTap: () {
                        Scaffold.of(context).openDrawer();
                      }));
                    }),
                    SizedBox(
                      height: 20.h,
                    ),
                    const HomeSlider(),
                    const BuzzInformation(),
                    const WhatsHappeningTitle(),
                    const EventFeaturedAdsList(),
                    SizedBox(
                      height: 32.h,
                    ),
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
                    ItemList(),
                    SizedBox(
                      height: 32.h,
                    ),
                    const DirectoryTitle(),
                    DirectoryList(),
                    SizedBox(
                      height: 32.h,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
