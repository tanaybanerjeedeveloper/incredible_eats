import 'package:flutter/material.dart';

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
          size: 15.65,
        ),
      ),
    );
  }
}
