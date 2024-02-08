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
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var orientation = MediaQuery.of(context).orientation;
    print(height);
    print(width);
    print(orientation);
    return const ScreenUtilInit(
      minTextAdapt: true,
      ensureScreenSize: true,
      designSize: Size(430, 932),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: MainMenu()),
    );
  }
}
