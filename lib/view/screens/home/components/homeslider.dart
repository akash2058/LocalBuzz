import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localbuzz/controller/appcontroller.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:provider/provider.dart';

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key});

  @override
  State<HomeSlider> createState() => _HomeSlider();
}

class _HomeSlider extends State<HomeSlider> {
  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    startAutoPageChange();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void startAutoPageChange() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      var state = Provider.of<AppController>(context, listen: false);
      if (_currentPage < state.sliderlist.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AppController>(
      builder: (context, slide, child) {
        return SizedBox(
          height: 263.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              ClipRRect(
                child: PageView.builder(
                  controller: _pageController,
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
                      _currentPage = index;
                    });
                  },
                ),
              ),
              Positioned(
                bottom: 10,
                right: 170,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      slide.sliderlist.length,
                      (index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 1),
                        height: 9.h,
                        width: _currentPage == index ? 15 : 9,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? AppColor.primaryyellow
                              : AppColor.primarywhite,
                          borderRadius: BorderRadius.circular(
                            _currentPage == index ? 10.0 : 5,
                          ),
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
