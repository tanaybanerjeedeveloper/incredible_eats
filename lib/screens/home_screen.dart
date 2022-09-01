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
    return Scaffold(
      appBar: AppBar(
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
    );
  }
}
