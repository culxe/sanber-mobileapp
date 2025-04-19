import 'dart:async';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final AuthController authController = Get.find();
  @override
  void onInit() {
    super.onInit();
    navigateToNextScreen();
  }

  void navigateToNextScreen() {
    Future.delayed(Duration(seconds: 2), () async {
      await authController.checkLoginStatus();
    });
  }
}
