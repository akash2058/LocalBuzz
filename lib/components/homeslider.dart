import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:provider/provider.dart';

class HomeSlider extends StatelessWidget {
  const HomeSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, slide, child) {
        return Container(
          height: 263.h,
          width: MediaQuery.sizeOf(context).width,
          decoration: const BoxDecoration(),
          child: SvgPicture.asset(AppImages.sliderthree),
        );
      },
    );
  }
}
