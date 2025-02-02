import 'package:finalproject_flutterapp/const/app_style.dart';
import 'package:finalproject_flutterapp/const/color.dart';
import 'package:finalproject_flutterapp/controllers/splashscreen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});
  @override
  Widget build(BuildContext context) {
    final SplashController splashController = Get.put(SplashController());

    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icon/app_main_icon.png', width: 150),
            SizedBox(height: 15),
            Text(
              'Flutter Final Project',
              style: poppinsMedium.copyWith(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
