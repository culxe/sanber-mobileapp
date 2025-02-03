import 'package:finalproject_flutterapp2/const/app_style.dart';
import 'package:finalproject_flutterapp2/const/color.dart';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';
import 'package:finalproject_flutterapp2/widgets/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final _obsecureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/icon/app_main_icon.png',
                  height: 57,
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Selamat Datang\nKembali',
                    style: poppinsMedium.copyWith(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Email',
                    style: poppinsRegular.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Password',
                    style: poppinsRegular.copyWith(
                      fontSize: 16,
                      color: greyColor,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: TextFormField(
                  controller: _passwordController,
                  onFieldSubmitted: (value) {},
                  focusNode: _focusNode,
                  obscureText: _obsecureText,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24,
                          ),
                          child: Text(
                            'Belum punya akun?',
                            style: poppinsRegular.copyWith(
                              fontSize: 12,
                              color: greyColor,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed('/register-page');
                          },
                          child: Text(
                            "Daftar",
                            style: poppinsRegular.copyWith(
                              fontSize: 12,
                              color: orangeColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Text(
                        'Lupa Password?',
                        style: poppinsRegular.copyWith(
                          fontSize: 12,
                          color: orangeColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 43),
                  child: ElevatedButton(
                    onPressed: () async {
                      await authController.login(
                        _emailController.text,
                        _passwordController.text,
                      );
                      if (authController.isAuthenticated.value) {
                        Get.offAll(BottomNavBar());
                      } else {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("Login Gagal"),
                            content: Text("Email atau password salah"),
                            actions: [
                              TextButton(
                                onPressed: () => Get.back(),
                                child: Text("OK"),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueColor,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 125),
                    ),
                    child: Text('Masuk',
                        style: poppinsMedium.copyWith(
                          color: whiteColor,
                          fontSize: 20,
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
