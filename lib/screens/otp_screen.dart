import 'package:eat_incredible_app/screens/home_screen.dart';
import 'package:eat_incredible_app/widgets/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OTPVerificationScreen extends StatefulWidget {
  //OTPVerificationScreen({Key? key}) : super(key: key);
  static const routeName = 'otp-screen';

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(17.0.w),
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 28.sp,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Center(
                child: Text(
                  'Enter the OTP you have received to set your password on your number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12.sp,
                      color: const Color(0xffA5A5A5)),
                ),
              ),
              SizedBox(
                height: 66.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE5E5E5)),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE5E5E5)),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE5E5E5)),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                    Container(
                      height: 50.h,
                      width: 50.h,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: TextField(
                        onChanged: (value) {
                          if (value.length == 1) {
                            FocusScope.of(context).nextFocus();
                          }
                        },
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: Color(0xffE5E5E5)),
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 42.37.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Text(
                      'Resend OTP',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: Theme.of(context).primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.3,
              ),
              PrimaryBtn(
                  onPressed: () {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  text: 'Verify'),
            ],
          ),
        ),
      ),
    );
  }
}
