import 'package:finalproject_flutterapp/firebase_options.dart';
import 'package:finalproject_flutterapp/pages/get_started.dart';
import 'package:finalproject_flutterapp/routes/app_routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:finalproject_flutterapp/widgets/bottom_navbar.dart';
import 'package:get/get.dart';
import 'package:finalproject_flutterapp/controllers/auth_controller.dart';
import 'package:finalproject_flutterapp/pages/login_page.dart';
import 'package:finalproject_flutterapp/pages/register_page.dart';
import 'package:finalproject_flutterapp/pages/home_screen.dart';
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
