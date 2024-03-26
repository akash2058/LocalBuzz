import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomTile extends StatelessWidget {
  String title;
  Widget? leading;
  Widget? trailing;
  CustomTile({super.key, required this.title, this.leading, this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      trailing: trailing,
      visualDensity: VisualDensity(horizontal: -4, vertical: -4),
      dense: true,
      contentPadding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
      shape: Border(top: BorderSide(color: AppColor.secondarylightgrey)),
      title: Text(title, style: tilestyle),
    );
  }
}