import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String title;
  VoidCallback ontap;
  Color? backgroundcolor;
  Color? textcolor;
  BorderSide borderSide;
  double? height;
  double? width;
  CustomButton(
      {super.key,
      required this.title,
      required this.ontap,
      this.backgroundcolor,
      this.textcolor,
      this.height,
      required this.borderSide,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60.r), side: borderSide)),
          onPressed: ontap,
          child: Text(title,
              style: GoogleFonts.manrope(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: textcolor))),
    );
  }
}
