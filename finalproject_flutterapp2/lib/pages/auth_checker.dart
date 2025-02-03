import 'package:finalproject_flutterapp2/pages/get_started.dart';
import 'package:flutter/material.dart';
import 'package:finalproject_flutterapp2/widgets/bottom_navbar.dart';
import 'package:get/get.dart';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';
import 'package:finalproject_flutterapp2/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthChecker extends StatefulWidget {
  @override
  _AuthCheckerState createState() => _AuthCheckerState();
}

class _AuthCheckerState extends State<AuthChecker> {
  final AuthController authController = Get.put(AuthController());
  bool? isFirstTime;

  @override
  void initState() {
    super.initState();
    checkFirstTime();
  }

  Future<void> checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = prefs.getBool('first_time') ?? true;

    setState(() {
      isFirstTime = firstTime;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isFirstTime == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (isFirstTime == true) {
      return GetStarted();
    }

    return Obx(() {
      if (authController.isAuthenticated.value) {
        return BottomNavBar();
      } else {
        return LoginPage();
      }
    });
  }
}
