import 'package:flutter/material.dart';
import 'package:localbuzz/provider/appproviders.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:localbuzz/view/splashscreen/splashscreen.dart';
import 'package:localbuzz/view/welcome_screen/welcome_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      ensureScreenSize: true,
      designSize: const Size(430, 932),
      child: MultiProvider(
          providers: getProviders(),
          child: const MaterialApp(
              debugShowCheckedModeBanner: false, home: WelcomeScreen())),
    );
  }
}
