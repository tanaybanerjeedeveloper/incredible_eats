import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  //HomeScreen({Key? key}) : super(key: key);
  static const routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuety = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        flexibleSpace: const Image(
          image: AssetImage(
            'assets/images/appbar_back.png',
          ),
          fit: BoxFit.cover,
        ),
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
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.all(17.0.w),
              child: Container(
                // width: 340.w,
                //width: double.infinity,
                height: 147.h,
                //color: Colors.amber,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(4),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // SizedBox(
            //   height: 15.h,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0.w),
              child: SizedBox(
                height: mediaQuety.height * 0.17,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        Image(
                          image: const AssetImage(
                            'assets/images/first_item.png',
                          ),
                          width: 72.71.w,
                          height: 69.72.h,
                        ),
                        Text(
                          'Vegetables',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16.2.w,
                    ),
                    Column(
                      children: [
                        Image(
                          image: const AssetImage(
                            'assets/images/second_item.png',
                          ),
                          width: 72.71.w,
                          height: 69.72.h,
                        ),
                        Text(
                          'Green',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16.2.w,
                    ),
                    Column(
                      children: [
                        Image(
                          image: const AssetImage(
                            'assets/images/third_item.png',
                          ),
                          width: 72.71.w,
                          height: 69.72.h,
                        ),
                        Text(
                          'Organic',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16.2.w,
                    ),
                    Column(
                      children: [
                        Image(
                          image: const AssetImage(
                            'assets/images/fourth_item.png',
                          ),
                          width: 72.71.w,
                          height: 69.72.h,
                        ),
                        Text(
                          'Exotic',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: Colors.black,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: const BoxDecoration(
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/banner2.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            // SizedBox(
            //   height: 16.h,
            // ),
            Padding(
              padding: EdgeInsets.only(
                  right: 17.0.w, left: 17.0.w, top: 16.0.h, bottom: 10.0.h),
              child: Text(
                'Best Seller',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.0.w),
              child: SizedBox(
                height: mediaQuety.height * 0.18,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 73.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bestseller1.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(
                      width: 16.2.w,
                    ),
                    Container(
                      width: 73.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bestseller2.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(
                      width: 16.2.w,
                    ),
                    Container(
                      width: 73.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bestseller3.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    SizedBox(
                      width: 16.2.w,
                    ),
                    Container(
                      width: 73.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bestseller1.png'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
