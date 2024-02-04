import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/customwidget/custombussinesscard.dart';
import 'package:provider/provider.dart';

class BussinessList extends StatelessWidget {
  const BussinessList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, state, child) {
        return SizedBox(
          height: 505.h,
          width: MediaQuery.sizeOf(context).width,
          child: ListView.builder(
              padding: EdgeInsets.all(16.h),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: state.imglist.length,
              itemBuilder: (context, index) {
                return BussinessCard(
                  title: 'Lac La Biche Massage Therapy ',
                  img: state.imglist[index],
                  description:
                      'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu adipisci velit, sed qu',
                );
              }),
        );
      },
    );
  }
}
