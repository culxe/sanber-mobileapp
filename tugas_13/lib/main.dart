import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_13/user/page/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tugas 13 Getx',
      home: const UserPage(),
    );
  }
}
