import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/customwidget/customtextformfield.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 37.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 24.h,
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Forget Password?',
                style: textsstyle,
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium m, ',
                style: discriptionStyle,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Email',
                style: formfieldstyle,
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomFormField(hint: 'enter your email'),
              SizedBox(
                height: 30.h,
              ),
              CustomButton(
                  backgroundcolor: AppColor.primaryyellow,
                  textcolor: AppColor.primarywhite,
                  width: MediaQuery.sizeOf(context).width,
                  title: 'Send Code',
                  ontap: () {},
                  borderSide: BorderSide.none),
              // Container(
              //   height: 200.h,
              //   width: MediaQuery.sizeOf(context).width,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //           fit: BoxFit.cover,
              //           image: AssetImage(AppImages.splashlogo))),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
