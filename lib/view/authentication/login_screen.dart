import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/customwidget/custom_pagetransition.dart';
import 'package:localbuzz/customwidget/custombutton.dart';
import 'package:localbuzz/customwidget/customdivider.dart';
import 'package:localbuzz/customwidget/customtextformfield.dart';
import 'package:localbuzz/view/authentication/components/authcomponents.dart';
import 'package:localbuzz/view/authentication/components/localbuzzlogo.dart';
import 'package:localbuzz/view/authentication/forgotpassword_screen.dart';
import 'package:localbuzz/view/authentication/register_screen.dart';
import 'package:localbuzz/view/constraints/appcolor.dart';
import 'package:localbuzz/view/constraints/appicons.dart';
import 'package:localbuzz/view/constraints/textstyle.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 27.h,
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
                  height: 27.h,
                ),
                LocalBuzzLogo(),
                SizedBox(
                  height: 37.h,
                ),
                Text(
                  'Login',
                  style: textsstyle,
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Email',
                  style: formfieldstyle,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomFormField(hint: 'Enter your email'),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Password',
                  style: formfieldstyle,
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomFormField(hint: 'Enter your password'),
                SizedBox(
                  height: 15.h,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          CustomPageRoute(child: ForgotPasswordPage()));
                    },
                    child: Text(
                      'Forgot Password ?',
                      style: formfieldstyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 51.h,
                ),
                CustomButton(
                    width: MediaQuery.sizeOf(context).width,
                    textcolor: AppColor.primarywhite,
                    backgroundcolor: AppColor.primaryyellow,
                    title: 'Login',
                    ontap: () {},
                    borderSide: BorderSide.none),
                SizedBox(
                  height: 30.h,
                ),
                Customdivider(text: 'OR'),
                SizedBox(
                  height: 30.h,
                ),
                Center(child: Googlelogo()),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have account?',
                      style: formfieldstyle,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context, CustomPageRoute(child: SignUpPage()));
                      },
                      child: Text(
                        'Sign Up',
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
