import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/customwidget/custombussinesscard.dart';
import 'package:localbuzz/view/screens/home/homeprovider.dart';
import 'package:provider/provider.dart';

class BussinessList extends StatelessWidget {
  const BussinessList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, state, child) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
            state.imglist.length,
            (index) => Padding(
              padding: EdgeInsets.only(left: 3.5.w),
              child: BussinessCard(
                title: 'Lac La Biche Massage Therapy ',
                img: state.imglist[index],
                description:
                    'Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed qu adipisci velit, sed qu',
              ),
            ),
          )),
        );
      },
    );
  }
}
