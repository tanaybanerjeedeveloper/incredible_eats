import 'package:flutter/material.dart';
import './screens/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
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
              home: OnboardingScreen(),
            ));

    // MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     primaryColor: const Color(0xffE20A13),
    //     fontFamily: 'Poppins',
    //     scaffoldBackgroundColor: const Color(0xffFFFFFF),
    //   ),
    //   home: IntroScreen(),
    // );
  }
}
