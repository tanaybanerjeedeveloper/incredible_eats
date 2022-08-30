import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen extends StatelessWidget {
  //const IntroScreen({Key? key}) : super(key: key);
  final String backgroundImg;
  final String title;
  final String subTitle;

  const IntroScreen(
      {required this.backgroundImg,
      required this.title,
      required this.subTitle});

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
              decoration: BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                    image: AssetImage(backgroundImg), fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(
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
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                ),
              ),
            ),
            SizedBox(
              height: 9.h,
            ),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
                color: const Color(0xff505050),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Theme.of(context).primaryColor,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.h, horizontal: 50.w)),
                child: Text(
                  'Next',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
                onPressed: () {},
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            TextButton(
              child: Text(
                'Skip',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xffA5A5A5),
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
