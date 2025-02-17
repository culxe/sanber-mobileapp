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
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
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
                  SizedBox(height: 1),
                  buildLoginOption(),
                  SizedBox(height: 20),
                  buildRegisterButton(),
                ],
              ),
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
        Obx(
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
        SizedBox(height: 8),
      ],
    );
  }

  Widget buildRegisterButton() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: ElevatedButton(
            onPressed: () async {
              String email = emailController.text.trim();
              String password = passwordController.text.trim();
              String? errorMessage =
                  await authController.register(email, password);

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
        ),
        SizedBox(
          height: 15,
        ),
        Divider(thickness: 0.5, indent: 30, endIndent: 30, color: greyColor),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            'Atau daftar menggunakan',
            style: TextStyle(color: greyColor),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                onPressed: () {
                  final authController = Get.find<AuthController>();
                  authController.loginWithGoogle();
                },
                child: FittedBox(
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
                        ' Daftar menggunakan Google',
                        style: TextStyle(color: Colors.red),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLoginOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
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
