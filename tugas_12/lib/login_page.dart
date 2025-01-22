import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:tugas_12/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();

    void _showMessage(BuildContext context, String message) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }

    void _signIn() async {
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      if (email.isEmpty || password.isEmpty) {
        _showMessage(context, 'Email atau password tidak boleh kosong!');
        return;
      }

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        _showMessage(context, 'Berhasil masuk, selamat datang.');
      } on FirebaseAuthException catch (e) {
        final errorMessage = e.code == 'email-already-in-use'
            ? 'Pengguna tidak ditemukan'
            : e.code == 'wrong-password'
                ? 'Password salah'
                : 'Error: ${e.message}';
        _showMessage(context, errorMessage);
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                child: Container(
                  width: 352,
                  height: 330,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/image_login.png'),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomTextFormField(
                controller: _emailController,
                label: "Email",
              ),
              CustomTextFormField(
                controller: _passwordController,
                label: "Password",
                obscureText: true,
              ),
              // SizedBox(height: 40),
              SizedBox(
                height: 52,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: Color(0xff3498DB),
                  ),
                  onPressed: _signIn,
                  child: Text(
                    'Masuk',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Atau masuk menggunakan',
                      style: TextStyle(color: Color(0xffC0C0C0)),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Color(0xffC0C0C0),
                      height: 3,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Material(
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
                    onPressed: () {},
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
                          'Masuk menggunakan akun Google',
                          style: TextStyle(color: Colors.red),
                        ),
                        SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 49),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Belum punya akun?'),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()),
                      );
                    },
                    child: Text(
                      'Daftar',
                      style: TextStyle(
                        color: Color(0xff3498DB),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text('sekarang'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.label,
      this.controller,
      this.obscureText = false});
  final String label;
  final TextEditingController? controller;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          label: Text(
            label,
            style: TextStyle(color: Color(0xffC0C0C0)),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xffC0C0C0)),
          ),
        ),
      ),
    );
  }
}
