import 'package:finalproject_flutterapp/main.dart';
import 'package:finalproject_flutterapp/pages/auth_checker.dart';
import 'package:finalproject_flutterapp/pages/get_started.dart';
import 'package:finalproject_flutterapp/pages/home_screen.dart';
import 'package:finalproject_flutterapp/pages/login_page.dart';
import 'package:finalproject_flutterapp/pages/register_page.dart';
import 'package:finalproject_flutterapp/pages/splashscreen.dart';
import 'package:finalproject_flutterapp/routes/app_routes_named.dart';
import 'package:finalproject_flutterapp/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.splashScreen, page: () => Splashscreen()),
    GetPage(name: AppRoutesNamed.getStartedPage, page: () => AuthChecker()),
    GetPage(name: AppRoutesNamed.loginPage, page: () => LoginPage()),
    GetPage(name: AppRoutesNamed.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutesNamed.homeScreen, page: () => BottomNavBar()),
  ];
}
