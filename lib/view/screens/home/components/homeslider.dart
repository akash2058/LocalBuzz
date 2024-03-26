import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/screens/home/homeprovider.dart';
import 'package:provider/provider.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key});

  @override
  State<HomeSlider> createState() => _HomeSlider();
}

class _HomeSlider extends State<HomeSlider> {
  @override
  void initState() {
    var state = Provider.of<HomeProvider>(context, listen: false);
    super.initState();
    state.pageController = PageController();
    state.startAutoPageChange();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, slide, child) {
        return SizedBox(
          height: 263.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              ClipRRect(
                child: PageView.builder(
                  controller: slide.pageController,
                  itemCount: slide.sliderlist.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(slide.sliderlist[index]),
                          ),
                        ),
                      ),
                    );
                  },
                  onPageChanged: (index) {
                    setState(() {
                      slide.currentpage = index;
                    });
                  },
                ),
              ),
              Positioned.fill(
                top: 220.h,
                bottom: 30.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    slide.sliderlist.length,
                    (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 1),
                      height: 9.h,
                      width: slide.currentpage == index ? 18.w : 9.w,
                      decoration: BoxDecoration(
                        color: slide.currentpage == index
                            ? AppColor.primaryyellow
                            : AppColor.primarywhite,
                        borderRadius: BorderRadius.circular(
                          slide.currentpage == index ? 10.0 : 5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
