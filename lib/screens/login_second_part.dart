import 'package:eat_incredible_app/widgets/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'otp_screen.dart';

class LogInSecondPart extends StatefulWidget {
  //LogInSecondPart({Key? key}) : super(key: key);
  static const routeName = 'login-second-part';

  @override
  State<LogInSecondPart> createState() => _LogInSecondPartState();
}

class _LogInSecondPartState extends State<LogInSecondPart> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.orangeAccent,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/login_background.png'),
                fit: BoxFit.cover,
              )),
              height: height * 0.5,
            ),
            Container(
              color: Colors.white,
              height: height * 0.6,
              child: Padding(
                padding: EdgeInsets.all(17.w),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50.w),
                      child: Text(
                        'Get Fresh Fruits and vegetables at your doresteps',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        'log in or Sign Up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: const Color(0xff5C5C5C),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.18),
                          blurRadius: 25,
                          offset: const Offset(2, 7),
                        )
                      ]),
                      child: Row(
                        children: [
                          Container(
                            width: 73.w,
                            height: 48.h,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                  right: BorderSide(
                                      color: Color(0xff5C5C5C), width: 1),
                                )),
                            child: Center(
                                child: Text(
                              '+91',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 12.sp,
                                color: const Color(0xff2C2C2C),
                              ),
                            )),
                          ),
                          Expanded(
                            child: Container(
                              child: const TextField(
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Enter Your Moble Number',
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    PrimaryBtn(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, OTPVerificationScreen.routeName);
                        },
                        text: 'Continue'),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Skip Log in',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: const Color(0xff3C3C43),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 36.h,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'I agree with your ',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: const Color(0xff3C3C43)),
                            children: [
                              TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.sp,
                                    color: const Color(0xff040404),
                                  ))
                            ]),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // Container(
            //   color: Colors.red,
            //   height: height * 0.1,
            // )
          ],
        ),
      ),
    );
  }
}
