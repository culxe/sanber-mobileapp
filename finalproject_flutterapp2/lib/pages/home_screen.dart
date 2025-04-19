import 'package:finalproject_flutterapp2/const/app_style.dart';
import 'package:finalproject_flutterapp2/const/color.dart';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';
import 'package:finalproject_flutterapp2/data/iconsrow.dart';
import 'package:finalproject_flutterapp2/data/namesrow.dart';
import 'package:finalproject_flutterapp2/data/newsdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final authController = Get.find<AuthController>();
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30, left: 26),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                      ),
                      child: Text(
                        'Home',
                        style: poppinsMedium.copyWith(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Obx(
                        () {
                          return Text(
                            'Hello ${authController.firebaseUser.value?.email}!',
                            style: poppinsMedium.copyWith(fontSize: 14),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: Image.asset(
                    'assets/image/homescreen_image1.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 13),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) {
                            return SizedBox(
                              width: 72,
                              child: Column(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: SizedBox(
                                      width: 56,
                                      height: 56,
                                      child: FittedBox(
                                        fit: BoxFit.contain,
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          padding: EdgeInsets.all(11),
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: lightgreyColor
                                                    .withAlpha(60),
                                                spreadRadius: 0.5,
                                                blurRadius: 8,
                                                offset: Offset(0, 2),
                                              ),
                                            ],
                                          ),
                                          child: Image.asset(iconsRow1[index]),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    namesRow1[index],
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                    overflow: TextOverflow.visible,
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(4, (index) {
                          return SizedBox(
                            width: 72,
                            child: Column(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: SizedBox(
                                    width: 56,
                                    height: 56,
                                    child: FittedBox(
                                      fit: BoxFit.contain,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        padding: EdgeInsets.all(11),
                                        decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  lightgreyColor.withAlpha(60),
                                              spreadRadius: 0.5,
                                              blurRadius: 8,
                                              offset: Offset(0, 2),
                                            ),
                                          ],
                                        ),
                                        child: Image.asset(iconsRow2[index]),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  namesRow2[index],
                                  textAlign: TextAlign.center,
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                  maxLines: 2,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 26, bottom: 7),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Text(
                            'Berita',
                            style: poppinsMedium.copyWith(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Container(
                width: 360,
                height: 192,
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
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Nasional',
                            style: latoBold.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "Lihat semua",
                              style: latoRegular.copyWith(
                                fontSize: 14,
                                color: brownColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: newsData.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, bottom: 10),
                              child: Container(
                                width: 180,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        'assets/image/homescreen_berita_image1.png',
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  '${newsData[index]['title']} \n',
                                              style: latoBold.copyWith(
                                                fontSize: 16,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  '${newsData[index]['title']} \n',
                                              style: latoBold.copyWith(
                                                fontSize: 5,
                                                color: whiteColor,
                                              ),
                                            ),
                                            TextSpan(
                                              text: newsData[index]['date'],
                                              style: latoRegular.copyWith(
                                                fontSize: 10,
                                                color: greyColor,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    if (index < newsData.length - 1)
                                      Divider(
                                        color: greyColor,
                                        thickness: 1,
                                        indent: 24,
                                        endIndent: 24,
                                      ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
