import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? controller;
  String hint;
  Widget? prefix;
  Widget? suffix;

  CustomFormField(
      {super.key,
      this.controller,
      required this.hint,
      this.prefix,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColor.primarygrey)),
      child: TextFormField(
        style: formfieldstyle,
        controller: controller,
        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 16.w, top: 12.h, bottom: 12.h),
          isDense: true,
          hintText: hint,
          hintStyle: formfieldstyle,
        ),
      ),
    );
  }
}
