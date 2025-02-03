import 'package:finalproject_flutterapp2/const/app_style.dart';
import 'package:finalproject_flutterapp2/const/color.dart';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final RxBool _obsecureText = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    'assets/icon/app_main_icon.png',
                    height: 57,
                  ),
                ),
                SizedBox(height: 13),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Selamat Datang\nSilahkan Mendaftar',
                    style: poppinsMedium.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(height: 50),
                buildTextField('Username', usernameController),
                buildTextField('Email', emailController),
                buildPasswordField(),
                SizedBox(height: 10),
                buildLoginOption(),
                SizedBox(height: 20),
                buildRegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
        ),
        SizedBox(height: 4),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget buildPasswordField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Password',
          style: poppinsRegular.copyWith(fontSize: 16, color: greyColor),
        ),
        SizedBox(height: 4),
        Obx(() => TextFormField(
              controller: passwordController,
              focusNode: _focusNode,
              obscureText: _obsecureText.value,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                suffixIcon: IconButton(
                  icon: Icon(_obsecureText.value
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () => _obsecureText.value = !_obsecureText.value,
                ),
              ),
            )),
        SizedBox(height: 8),
      ],
    );
  }

  Widget buildRegisterButton() {
    return Padding(
      padding: EdgeInsets.only(bottom: 43),
      child: ElevatedButton(
        onPressed: () async {
          String email = emailController.text.trim();
          String password = passwordController.text.trim();
          String? errorMessage = await authController.register(email, password);

          if (errorMessage != null) {
            showDialog(
              context: Get.context!,
              builder: (_) => AlertDialog(
                title: Text("Registrasi Gagal"),
                content: Text(errorMessage),
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
          backgroundColor: darkblueColor,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 125),
        ),
        child: Text(
          'Daftar',
          style: poppinsMedium.copyWith(color: whiteColor, fontSize: 18),
        ),
      ),
    );
  }

  Widget buildLoginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              'Sudah punya akun? ',
              style: poppinsRegular.copyWith(fontSize: 12, color: greyColor),
            ),
            TextButton(
              onPressed: () => Get.toNamed('/login-page'),
              child: Text(
                'Login',
                style:
                    poppinsRegular.copyWith(fontSize: 12, color: orangeColor),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
