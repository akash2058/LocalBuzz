import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/screens/home/components/buzzinformation.dart';
import 'package:localbuzz/customwidget/custominformcard.dart';
import 'package:localbuzz/view/screens/home/components/directorylist.dart';
import 'package:localbuzz/view/screens/home/components/eventcard.dart';
import 'package:localbuzz/view/screens/home/components/homescreenhead.dart';
import 'package:localbuzz/view/screens/home/components/homeslider.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return Scaffold(
          floatingActionButton: CustomButton(title: 'POST ADS', ontap: () {}),
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(parent: BouncingScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenHead(),
                SizedBox(
                  height: 20.h,
                ),
                const HomeSlider(),
                BuzzInformation(),
                EventCard(),
                DirectoryList()
              ],
            ),
          ),
        );
      },
    );
  }
}
