import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/screens/home/homeprovider.dart';
import 'package:provider/provider.dart';

class ItemList extends StatefulWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  late ScrollController _scrollController;
  late Timer _timer;
  final double _scrollIncrement = 1.0; // Adjust the scroll increment as needed
  bool _scrollingForward = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _startScrollAnimation();
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  void _startScrollAnimation() {
    _timer = Timer.periodic(Duration(milliseconds: 25), (timer) {
      if (_scrollingForward) {
        _scrollController.jumpTo(_scrollController.offset + _scrollIncrement);
        if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent) {
          _scrollingForward = false;
        }
      } else {
        _scrollController.jumpTo(_scrollController.offset - _scrollIncrement);
        if (_scrollController.offset <= 0) {
          _scrollingForward = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, img, child) {
        return SizedBox(
          height: 101.h,
          width: MediaQuery.sizeOf(context).width,
          child: ListView.builder(
            reverse: true,
            controller: _scrollController,
            physics: const BouncingScrollPhysics(
              parent: BouncingScrollPhysics(),
            ),
            itemCount: img.imges.length, // Infinite loop by doubling the items
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              // Use % to cycle through items
              final realIndex = index % img.imges.length;
              return Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(5.sp),
                    width: 100.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryyellow),
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(img.imges[realIndex]),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
