import 'package:finalproject_flutterapp2/pages/get_started.dart';
import 'package:finalproject_flutterapp2/pages/login_page.dart';
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
      Get.offAll(() => BottomNavBar()); // Setelah login, masuk ke Home
    } catch (e) {
      Get.snackbar('Login Failed', e.toString());
    }
  }

  Future<void> register(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      isAuthenticated.value = true;
      Get.offAll(() => BottomNavBar()); // Setelah register, masuk ke Home
    } catch (e) {
      Get.snackbar('Registration Failed', e.toString());
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    isAuthenticated.value = false;
    Get.offAll(() => GetStarted()); // Setelah logout, kembali ke Login
  }
}
