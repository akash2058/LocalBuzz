import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomTile extends StatelessWidget {
  String title;
  Widget? leading;
  Widget? trailing;
  VoidCallback onTap;
  CustomTile(
      {super.key,
      required this.title,
      this.leading,
      this.trailing,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 8.w,
      onTap: onTap,
      leading: leading,
      trailing: trailing,
      visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
      contentPadding:
          const EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
      shape:
          const Border(bottom: BorderSide(color: AppColor.secondarylightgrey)),
      title: Text(title, style: tilestyle),
    );
  }
}
