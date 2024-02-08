import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:localbuzz/view/constraints/appfonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String title;
  VoidCallback ontap;
  Color? backgroundcolor;
  Color? textcolor;
  CustomButton(
      {super.key,
      required this.title,
      required this.ontap,
      this.backgroundcolor,
      this.textcolor});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: backgroundcolor),
        onPressed: ontap,
        child: Text(title,
            style: GoogleFonts.manrope(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: textcolor)));
  }
}
