import 'package:finalproject_flutterapp2/pages/get_started.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:finalproject_flutterapp2/widgets/bottom_navbar.dart';

class AuthController extends GetxController {
  var isAuthenticated = false.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void onInit() {
    super.onInit();
    _auth.authStateChanges().listen((User? user) {
      isAuthenticated.value = user != null;
    });
  }

  Future<void> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      isAuthenticated.value = true;
      Get.offAll(() => BottomNavBar());
    } catch (e) {
      // Get.snackbar('Login Failed', e.toString());
    }
  }

  Future<String?> register(String email, String password) async {
    try {
      if (password.length < 6) {
        return "Password harus memiliki minimal 6 karakter.";
      }

      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      isAuthenticated.value = true;
      Get.offAll(() => BottomNavBar());
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return "Email sudah digunakan. Silakan gunakan email lain.";
      } else if (e.code == 'weak-password') {
        return "Password terlalu lemah. Gunakan kombinasi huruf dan angka.";
      }
      return "Registrasi gagal: ${e.message}";
    } catch (e) {
      return "Terjadi kesalahan: ${e.toString()}";
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    isAuthenticated.value = false;
    Get.offAll(() => GetStarted());
  }
}
