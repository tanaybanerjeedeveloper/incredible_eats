import 'package:eat_incredible_app/widgets/primary_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_second_part.dart';

class LogInFirstPart extends StatelessWidget {
  //const LogInFirstPart({Key? key}) : super(key: key);
  static const routeName = 'login-first-part';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(17.w),
        child: Column(
          children: [
            SizedBox(
              height: 30.53.h,
            ),
            Container(
              width: 340.w,
              height: 347.h,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage('assets/images/login_img.png'),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(
                  Radius.circular(2),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Text(
                'Incredible, Fresh, And A Delight To Savour!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 28.sp,
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            // Text(
            //   subTitle,
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     fontWeight: FontWeight.w400,
            //     fontSize: 12.sp,
            //     color: const Color(0xff505050),
            //   ),
            // ),
            SizedBox(
              height: 40.h,
            ),
            PrimaryBtn(
                onPressed: () =>
                    Navigator.pushNamed(context, LogInSecondPart.routeName),
                text: 'Log in'),
            // Container(
            //   width: double.infinity,
            //   padding: EdgeInsets.symmetric(horizontal: 22.w),
            //   child: ElevatedButton(
            //     style: ElevatedButton.styleFrom(
            //         elevation: 0,
            //         backgroundColor: Theme.of(context).primaryColor,
            //         padding:
            //             EdgeInsets.symmetric(vertical: 10.h, horizontal: 50.w)),
            //     onPressed: () {
            //       Navigator.pushNamed(context, LogInSecondPart.routeName);
            //     },
            //     child: Text(
            //       'Log in',
            //       style: TextStyle(
            //           fontWeight: FontWeight.w500,
            //           fontSize: 16.sp,
            //           color: Colors.white),
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 5.h,
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
            )
          ],
        ),
      ),
    );
  }
}
