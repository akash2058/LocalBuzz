import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custominformcard.dart';
import 'package:localbuzz/view/screens/home/homeprovider.dart';

import 'package:provider/provider.dart';

class DirectoryList extends StatelessWidget {
  const DirectoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, state, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                state.imglist.length,
                (index) => Padding(
                    padding: EdgeInsets.only(left: 17.5.w),
                    child: Row(
                      children: [
                        CustomCard(
                          img: state.imglist[index],
                          title: state.titlelist[index],
                        ),
                        SizedBox(
                          width: 22.w,
                        )
                      ],
                    ))),
          ),
        );
      },
    );
  }
}
