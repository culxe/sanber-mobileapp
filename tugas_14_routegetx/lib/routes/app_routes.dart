import 'package:get/get.dart';
import 'package:tugas_14_routegetx/pages/getstarted_page.dart';
import 'package:tugas_14_routegetx/pages/home_page.dart';
import 'package:tugas_14_routegetx/pages/login_page.dart';
import 'package:tugas_14_routegetx/pages/register_page.dart';
import 'package:tugas_14_routegetx/routes/app_routes_named.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.getStartedPage, page: () => GetStartedPage()),
    GetPage(name: AppRoutesNamed.loginPage, page: () => LoginPage()),
    GetPage(name: AppRoutesNamed.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutesNamed.homePage, page: () => HomePage()),
  ];
}
