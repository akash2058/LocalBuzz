import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomExpansionTile extends StatelessWidget {
  String title;
  List<Widget> children;
  VoidCallback onTap;

  CustomExpansionTile(
      {super.key,
      required this.title,
      required this.children,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        visualDensity: VisualDensity(horizontal: -4, vertical: -4),
        collapsedShape:
            Border(top: BorderSide(color: AppColor.secondarylightgrey)),
        dense: true,
        shape:
            const Border(top: BorderSide(color: AppColor.secondarylightgrey)),
        tilePadding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
        children: children,
        collapsedIconColor: AppColor.secondarylightblack,
        title: Text(
          title,
          style: tilestyle,
        ));
  }
}
