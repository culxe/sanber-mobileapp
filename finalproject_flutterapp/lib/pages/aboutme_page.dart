import 'package:finalproject_flutterapp/const/app_style.dart';
import 'package:finalproject_flutterapp/const/color.dart';
import 'package:finalproject_flutterapp/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutmePage extends StatelessWidget {
  final AuthController authController = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 45,
                bottom: 25,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(
                        0,
                      ),
                      child: Text(
                        'About me',
                        style: poppinsSemiBold.copyWith(
                          fontSize: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Foto Profil
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: brownColor, width: 3),
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/image/profile_pic.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Indiana Namaul Husnah",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  // Email
                  Text(
                    "indinamaull@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.8),
              child: Container(
                width: 282,
                height: 108,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 182, 187, 195),
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 9),
                          child: Align(
                            child: Text(
                              'Portofolio',
                              style: poppinsBold.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_flutter.png',
                                width: 30,
                              ),
                              onPressed: () {
                                launchUrl(Uri.parse("https://flutter.dev"));
                              },
                            ),
                            Text(
                              'Flutter',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_pythonpng.png',
                                width: 35,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Flutter',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_kotlin.png',
                                width: 30,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Flutter',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(0.8),
              child: Container(
                width: 282,
                height: 108,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 182, 187, 195),
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 9),
                          child: Align(
                            child: Text(
                              'Contact',
                              style: poppinsBold.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_linkedin.png',
                                width: 30,
                              ),
                              onPressed: () {
                                launchUrl(Uri.parse("https://flutter.dev"));
                              },
                            ),
                            Text(
                              'LinkedIn',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_telegram.png',
                                width: 30,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Telegram',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_email.png',
                                width: 30,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Email',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(0.8),
              child: Container(
                width: 282,
                height: 108,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 182, 187, 195),
                      blurRadius: 16,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 9),
                          child: Align(
                            child: Text(
                              'Course',
                              style: poppinsBold.copyWith(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Image.asset(
                                'assets/icon/aboutme_sanbercode.png',
                                width: 130,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'Sanbercode',
                              style: poppinsBold.copyWith(
                                color: greyColor,
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        authController.logout();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: brownColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        "Logout",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
