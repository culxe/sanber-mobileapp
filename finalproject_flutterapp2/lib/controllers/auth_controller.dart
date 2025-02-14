import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  var isAuthenticated = false.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void onInit() {
    super.onInit();
    _auth.authStateChanges().listen((User? user) {
      isAuthenticated.value = user != null;
    });
  }

  Future<String?> login(String email, String password) async {
    String emailPattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    RegExp regex = RegExp(emailPattern);

    if (email.trim().isEmpty || password.trim().isEmpty) {
      return "Email dan password harus diisi!";
    }

    if (!regex.hasMatch(email)) {
      return "Format email tidak valid!";
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        isAuthenticated.value = true;
        Get.offAllNamed('/home-screen');
        return null;
      } else {
        isAuthenticated.value = false;
        return 'Login Failed: User tidak ditemukan.';
      }
    } on FirebaseAuthException catch (e) {
      isAuthenticated.value = false;
      if (e.code == 'user-not-found') {
        return 'Email tidak terdaftar.';
      } else if (e.code == 'wrong-password') {
        return 'Password salah.';
      } else {
        return e.message ?? 'Terjadi kesalahan.';
      }
    } catch (e) {
      isAuthenticated.value = false;
      return 'Terjadi kesalahan: ${e.toString()}';
    }
  }

  Future<String?> register(String email, String password) async {
    try {
      RegExp regex = RegExp(emailPattern);
      if (email.trim().isEmpty || password.trim().isEmpty) {
        return "Email dan password harus diisi!";
      } else if (!regex.hasMatch(email)) {
        return "Format email tidak valid!";
      } else if (password.length < 6) {
        return "Password harus memiliki minimal 6 karakter.";
      }

      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      isAuthenticated.value = true;
      // Get.offAllNamed('/home-screen');
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

  Future<UserCredential?> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return null;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      print("Error saat login dengan Google: ${e.toString()}");
      return null;
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
    // if (await googleSignIn.isSignedIn()) {
    //   await googleSignIn.signOut();
    // }
    isAuthenticated.value = false;
    Get.offAllNamed('/');
  }
}
