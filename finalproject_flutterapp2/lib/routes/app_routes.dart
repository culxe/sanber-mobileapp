import 'package:finalproject_flutterapp2/pages/auth_checker.dart';
import 'package:finalproject_flutterapp2/pages/login_page.dart';
import 'package:finalproject_flutterapp2/pages/register_page.dart';
import 'package:finalproject_flutterapp2/pages/splashscreen.dart';
import 'package:finalproject_flutterapp2/routes/app_routes_named.dart';
import 'package:finalproject_flutterapp2/widgets/bottom_navbar.dart';
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
