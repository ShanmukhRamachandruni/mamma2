import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mammamagic/screens/auth-ui/welcome-screen.dart';
import 'package:mammamagic/utils/app-constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Get.offAll(() => WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        elevation: 0,
      ),
      body: Column(children: [
        Expanded(
          child: Container(
            width: Get.width,
            alignment: Alignment.center,
            child: Lottie.asset('assets/images/splash-icon.json'),
          ),
        ),
        Container(
          width: Get.width,
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 20.0),
          child: Text(AppConstant.appMainName,
              style: TextStyle(
                  color: AppConstant.appTextColor,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold)),
        )
      ]),
    );
  }
}
