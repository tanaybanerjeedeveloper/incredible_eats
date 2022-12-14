import 'package:eat_incredible_app/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './utilities/routes.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //     statusBarColor: Colors.white, statusBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        //designSize: const Size(375, 812),
        builder: (_, child) => MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                primaryColor: const Color(0xffE20A13),
                fontFamily: 'Poppins',
                scaffoldBackgroundColor: const Color(0xffFFFFFF),
              ),
              debugShowCheckedModeBanner: false,
              // home: OnboardingScreen(),
              home: LocationScreen(),
              routes: routes,
            ));
  }
}
