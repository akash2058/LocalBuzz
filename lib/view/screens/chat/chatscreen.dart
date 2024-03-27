import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custommessagecard.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

import 'package:localbuzz/view/screens/chat/components/chatheader.dart';
import 'package:localbuzz/view/screens/home/components/homedrawer.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const AppDrawer(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ChatHead(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32.h,
                  ),
                  Text(
                    'Message',
                    style: screentitlestyle,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  SizedBox(
                    height: 500.h,
                    width: MediaQuery.sizeOf(context).width,
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            CustomChatCard(
                              name: 'Flores, Juanita',
                              message:
                                  'Hi, I noticed you struggle to finalize y',
                              numberofchat: '3',
                              duration: '5 min',
                              img: AppImages.user,
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 18.h,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
