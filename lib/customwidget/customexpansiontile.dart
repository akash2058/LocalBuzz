import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

// ignore: must_be_immutable
class CustomExpansionTile extends StatelessWidget {
  String title;
  List<Widget> children;
  void Function(bool)? onchanged;
  CustomExpansionTile({
    super.key,
    required this.title,
    required this.children,
    this.onchanged,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        onExpansionChanged: onchanged,
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
