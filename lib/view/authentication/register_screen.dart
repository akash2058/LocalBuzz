import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custom_pagetransition.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/customwidget/customdivider.dart';
import 'package:localbuzz/customwidget/customtextformfield.dart';
import 'package:localbuzz/view/authentication/components/authcomponents.dart';
import 'package:localbuzz/view/authentication/components/localbuzzlogo.dart';
import 'package:localbuzz/view/authentication/login_screen.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SingleChildScrollView(
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
                const LocalBuzzLogo(),
                Text(
                  'Sign Up',
                  style: textsstyle,
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  'First Name',
                  style: formfieldstyle,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomFormField(hint: 'enter your name'),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'Last Name',
                  style: formfieldstyle,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomFormField(hint: 'enter your last name'),
                SizedBox(
                  height: 20.h,
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
                  height: 20.h,
                ),
                Text(
                  'Enter Password',
                  style: formfieldstyle,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomFormField(hint: 'enter your password'),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                    width: MediaQuery.sizeOf(context).width,
                    backgroundcolor: AppColor.primaryyellow,
                    textcolor: AppColor.primarywhite,
                    title: 'Confirm',
                    ontap: () {},
                    borderSide: BorderSide.none),
                SizedBox(
                  height: 30.h,
                ),
                Customdivider(text: 'OR'),
                SizedBox(
                  height: 27.h,
                ),
                Center(child: Googlelogo()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'If You have an account',
                      style: formfieldstyle,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, CustomPageRoute(child: const LoginPage()));
                      },
                      child: Text(
                        'Sign In',
                        style: styles,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
