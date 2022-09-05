import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LocationScreen extends StatefulWidget {
  //LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffFFFFFF),
        // flexibleSpace: const Image(
        //   image: AssetImage(
        //     'assets/images/appbar_back.png',
        //   ),
        //   fit: BoxFit.cover,
        // ),
        leading: const Icon(
          Icons.fmd_good,
          color: Colors.white,
          size: 20,
        ),
        title: Text(
          '237, Sane Guruji Marg, Jacob Circle',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: Colors.white,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              // decoration: const BoxDecoration(
              //     borderRadius: BorderRadius.all(Radius.circular(30))),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: const Color(0xff2E2E2E),
                  ),
                  suffixIcon: const Icon(
                    Icons.search,
                    size: 22,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      )),
                  filled: true,
                  fillColor: const Color(0xffF5F5F5),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(17.0.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.gps_fixed,
                    size: 15,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 10.32.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Current Location',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Using GPS',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // ListTile(
              //   contentPadding: const EdgeInsets.all(0),
              //   leading: Icon(
              //     Icons.gps_fixed,
              //     size: 15,
              //     color: Theme.of(context).primaryColor,
              //   ),
              //   title: Text(
              //     'Current Location',
              //     style: TextStyle(
              //       fontWeight: FontWeight.w500,
              //       fontSize: 12.sp,
              //       color: Colors.black,
              //     ),
              //   ),
              //   subtitle: const Text('Using GPS'),
              // )
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Saved Location',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.sp),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.fmd_good_outlined,
                        size: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                      Container(
                        height: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp),
                      ),
                      Text(
                        '10, Bharat Commercial Centre, Sect 18, Turbhe, Navi Mumbai',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10.sp,
                          color: const Color(0xff404040),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.fmd_good_outlined,
                        size: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                      Container(
                        height: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Office',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp),
                      ),
                      Text(
                        '10, Bharat Commercial Centre, Sect 18, Turbhe, Navi Mumbai',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10.sp,
                          color: const Color(0xff404040),
                        ),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.fmd_good_outlined,
                        size: 15,
                        color: Theme.of(context).primaryColor,
                      ),
                      Container(
                        height: 12,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Other',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 14.sp),
                      ),
                      Text(
                        '10, Bharat Commercial Centre, Sect 18, Turbhe, Navi Mumbai',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 10.sp,
                          color: const Color(0xff404040),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
