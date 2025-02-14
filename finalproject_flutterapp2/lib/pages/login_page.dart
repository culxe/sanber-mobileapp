import 'package:finalproject_flutterapp2/const/app_style.dart';
import 'package:finalproject_flutterapp2/const/color.dart';
import 'package:finalproject_flutterapp2/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final AuthController authController = Get.put(AuthController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final RxBool obsecureText = true.obs;

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
              SizedBox(
                height: 4,
              ),
              buildTextField('Email', emailController),
              SizedBox(
                height: 24,
              ),
              buildPasswordField(),
              SizedBox(
                height: 10,
              ),
              buildLoginOption(),
              SizedBox(
                height: 24,
              ),
              buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              label,
              style: poppinsRegular.copyWith(
                fontSize: 16,
                color: greyColor,
              ),
            ),
          ),
        ),
        SizedBox(height: 4),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget buildPasswordField() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        child: Obx(
          () => TextFormField(
            controller: passwordController,
            focusNode: focusNode,
            obscureText: obsecureText.value,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              suffixIcon: IconButton(
                icon: Icon(obsecureText.value
                    ? Icons.visibility_off
                    : Icons.visibility),
                onPressed: () => obsecureText.value = !obsecureText.value,
              ),
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildLoginOption() {
    return Row(
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
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Lupa Password?',
                style: poppinsRegular.copyWith(
                  fontSize: 12,
                  color: orangeColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLoginButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: ElevatedButton(
                onPressed: () async {
                  String email = emailController.text.trim();
                  String password = passwordController.text.trim();

                  String? errorMessage =
                      await authController.login(email, password);

                  if (errorMessage != null) {
                    showDialog(
                      context: Get.context!,
                      builder: (_) => AlertDialog(
                        title: Text("Masuk Gagal"),
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
                  backgroundColor: blueColor,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 125),
                ),
                child: Text(
                  'Masuk',
                  style: poppinsMedium.copyWith(
                    color: whiteColor,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(thickness: 0.5, indent: 30, endIndent: 30, color: greyColor),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'Atau masuk menggunakan',
              style: TextStyle(color: greyColor),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Material(
              color: Colors.white,
              child: SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    surfaceTintColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    final authController = Get.find<AuthController>();
                    await authController.loginWithGoogle();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/icon/icon_google.png'),
                          ),
                        ),
                      ),
                      Text(
                        'Masuk menggunakan Google',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
