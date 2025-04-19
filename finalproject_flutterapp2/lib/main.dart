import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalproject_flutterapp2/firebase_options.dart';
import 'package:finalproject_flutterapp2/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // FirebaseAuth.instance.setLanguageCode("id");

  await Firebase.initializeApp(
    // name: "finalproject_flutterapp2",
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppRoutes.routes,
      initialRoute: '/',
      title: 'Final Project Flutter App',
      debugShowCheckedModeBanner: false,
    );
  }
}
