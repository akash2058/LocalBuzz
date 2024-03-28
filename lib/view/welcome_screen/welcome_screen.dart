import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:localbuzz/customwidget/custom_pagetransition.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/customwidget/customdivider.dart';
import 'package:localbuzz/view/authentication/components/authcomponents.dart';
import 'package:localbuzz/view/authentication/login_screen.dart';
import 'package:localbuzz/view/authentication/register_screen.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/svgicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 15.h, right: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 162.h,
              ),
              Container(
                  height: 249.h,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: AppColor.secondarygrey)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 50.w, right: 64.w),
                    child: Image.asset(
                      AppImages.beelogo,
                    ),
                  )),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Welcome to Local Buzz',
                style: textsstyle,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ',
                style: discriptionStyle,
              ),
              SizedBox(
                height: 21.h,
              ),
              CustomButton(
                backgroundcolor: AppColor.primaryyellow,
                textcolor: AppColor.primarywhite,
                width: MediaQuery.sizeOf(context).width,
                title: 'Login',
                ontap: () {
                  Navigator.push(context, CustomPageRoute(child: LoginPage()));
                },
                borderSide: BorderSide.none,
              ),
              SizedBox(
                height: 21.h,
              ),
              CustomButton(
                backgroundcolor: AppColor.primarywhite,
                textcolor: AppColor.secondaryblack,
                width: MediaQuery.sizeOf(context).width,
                title: 'Sign up',
                ontap: () {
                  Navigator.push(context, CustomPageRoute(child: SignUpPage()));
                },
                borderSide: BorderSide(color: AppColor.primarygrey),
              ),
              SizedBox(
                height: 30.h,
              ),
              Customdivider(text: 'OR'),
              SizedBox(
                height: 21.h,
              ),
              Center(
                child: Googlelogo(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
