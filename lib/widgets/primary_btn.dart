import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrimaryBtn extends StatelessWidget {
  //const PrimaryBtn({Key? key}) : super(key: key);
  final String text;
  final VoidCallback onPressed;

  const PrimaryBtn({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 22.w),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 50.w)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: Colors.white),
        ),
      ),
    );
  }
}
