import 'package:finalproject_flutterapp2/const/app_style.dart';
import 'package:finalproject_flutterapp2/const/color.dart';
import 'package:finalproject_flutterapp2/routes/app_routes_named.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icon/app_main_icon.png', width: 150),
            SizedBox(height: 93),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutesNamed.registerPage);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: blueColor,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 125),
              ),
              child: Text('Daftar',
                  style: poppinsMedium.copyWith(
                    color: whiteColor,
                    fontSize: 20,
                  )),
            ),
            SizedBox(
              width: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 125),
              child: Text(
                'Atau',
                style: poppinsMedium.copyWith(
                  color: darkblueColor,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed(AppRoutesNamed.loginPage);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: darkblueColor,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 125),
              ),
              child: Text(
                'Masuk',
                style: poppinsMedium.copyWith(
                  color: whiteColor,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
