import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class CustomFormfield extends StatelessWidget {
  String hint;
  Widget? suffix;
  Widget? prefix;
  CustomFormfield({super.key, this.suffix, this.prefix, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.r)),
      color: AppColor.primarylightblack,
      child: TextFormField(
        style: hintstyle,
        decoration: InputDecoration(
          prefixIconConstraints: BoxConstraints(),
          suffixIcon: suffix,
          hintText: hint,
          prefixIcon: prefix,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          hintStyle: hintstyle,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
