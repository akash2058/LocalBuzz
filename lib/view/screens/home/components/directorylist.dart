import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/customwidget/custominformcard.dart';

import 'package:provider/provider.dart';

class DirectoryList extends StatelessWidget {
  const DirectoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 9.25.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  state.imglist.length,
                  (index) => Padding(
                        padding: EdgeInsets.only(left: 3.5.w),
                        child: CustomCard(
                            image: state.imglist[index],
                            date: '27 FEB, 2020',
                            location: 'Sir Winston',
                            country: 'Churchill Park',
                            description:
                                'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id esExcepteur , ',
                            onpress: () {},
                            title: state.titlelist[index]),
                      )),
            ),
          ),
        );
      },
    );
  }
}
