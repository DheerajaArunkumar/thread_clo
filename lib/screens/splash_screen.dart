import 'dart:async';

import 'package:flutter/material.dart';
import 'package:thread_clo/screens/login.dart';
import 'package:thread_clo/utils/image_constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImageConstant.threadPrimaryLogo),
          SizedBox(
            height: 20,
          ),
          CircularProgressIndicator(color: Colors.black),
        ],
      )),
    );
  }
}
