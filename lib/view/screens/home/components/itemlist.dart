import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:provider/provider.dart';

class ItemList extends StatefulWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  State<ItemList> createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  @override
  void initState() {
    var state = Provider.of<AppController>(context, listen: false);
    super.initState();

    // Delay before starting the animation
    Future.delayed(Duration(milliseconds: 200), () {
      _startScrollAnimation(state);
    });
  }

  void _startScrollAnimation(AppController state) {
    // Animate scroll to the max extent
    state.scrollController.animateTo(
      state.scrollController.position.maxScrollExtent,
      duration: Duration(seconds: state.imges.length * 2),
      curve: Curves.linear,
    );

    // After the animation completes, reverse the scroll
    Future.delayed(
      Duration(seconds: state.imges.length),
      () {
        _reverseScroll(state);
      },
    );
  }

  void _reverseScroll(AppController state) {
    // Animate scroll to the min extent
    state.scrollController.animateTo(
      state.scrollController.position.minScrollExtent,
      duration: Duration(seconds: state.imges.length),
      curve: Curves.linear,
    );

    // After the animation completes, start scrolling forward again
    Future.delayed(
      Duration(seconds: state.imges.length),
      () {
        _startScrollAnimation(state);
      },
    );
  }

  @override
  void dispose() {
    var state = Provider.of<AppController>(context, listen: false);
    state.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, img, child) {
        return SizedBox(
          height: 101.h,
          width: MediaQuery.sizeOf(context).width,
          child: ListView.builder(
            reverse: true,
            controller: img.scrollController,
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
