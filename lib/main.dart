import 'package:flutter/material.dart';
import 'package:localbuzz/provider/appproviders.dart';
import 'package:localbuzz/view/mainmenu/main_menu.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: getProviders(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(360, 690),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainMenu()),
    );
  }
}
