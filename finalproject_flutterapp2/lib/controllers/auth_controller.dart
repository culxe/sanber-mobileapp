import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  var isAuthenticated = false.obs;
  Rxn<User> firebaseUser = Rxn<User>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
  late final RegExp _emailRegex;

  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void onInit() {
    super.onInit();
    _emailRegex = RegExp(emailPattern);
    _auth.authStateChanges().listen((User? user) {
      isAuthenticated.value = user != null;
    });
  }

  var userEmail = ''.obs;
  void setUserEmail(String email) {
    userEmail.value = email;
  }

  String? _validateEmailAndPassword(String email, String password,
      {bool isRegister = false}) {
    if (email.trim().isEmpty || password.trim().isEmpty) {
      return "Email dan password harus diisi!";
    }
    if (!_emailRegex.hasMatch(email)) {
      return "Format email tidak valid!";
    }
    if (isRegister && password.length < 6) {
      return "Password harus memiliki minimal 6 karakter.";
    }
    return null;
  }

  Future<String?> login(String email, String password) async {
    final validationError = _validateEmailAndPassword(email, password);
    if (validationError != null) {
      Get.log("❌ Login validation failed: $validationError");
      return validationError;
    }

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (userCredential.user != null) {
        setUserEmail(email);
        isAuthenticated.value = true;
        Get.log("✅ Berhasil login sebagai $email");
        Get.offAllNamed('/home-screen');
        return null;
      } else {
        isAuthenticated.value = false;
        Get.log("🚫 User tidak ditemukan");
        return 'Login gagal: User tidak ditemukan.';
      }
    } on FirebaseAuthException catch (e) {
      isAuthenticated.value = false;
      Get.log("🔥 FirebaseAuthException: ${e.code} - ${e.message}");

      switch (e.code) {
        case 'user-not-found':
          return 'Email tidak terdaftar.';
        case 'wrong-password':
          return 'Password salah.';
        case 'too-many-requests':
          return 'Terlalu banyak percobaan. Coba lagi nanti.';
        default:
          return 'Error: Terjadi kesalahan (${e.code})';
      }
    } catch (e) {
      isAuthenticated.value = false;
      Get.log("💥 Uncaught exception: ${e.toString()}");
      return 'Terjadi kesalahan: ${e.toString()}';
    }
  }

  Future<String?> register(String email, String password) async {
    final validationError =
        _validateEmailAndPassword(email, password, isRegister: true);
    if (validationError != null) {
      Get.log("❌ Register validation failed: $validationError");
      return validationError;
    }

    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      setUserEmail(email);
      isAuthenticated.value = true;
      Get.log("✅ Berhasil register sebagai $email");
      Get.offAllNamed('/home-screen');
      return null;
    } on FirebaseAuthException catch (e) {
      Get.log("🔥 FirebaseAuthException: ${e.code} - ${e.message}");

      switch (e.code) {
        case 'email-already-in-use':
          return "Email sudah digunakan. Silakan gunakan email lain.";
        case 'weak-password':
          return "Password terlalu lemah. Gunakan kombinasi huruf dan angka.";
        default:
          return "Registrasi gagal: ${e.message}";
      }
    } catch (e) {
      Get.log("💥 Exception tidak diketahui: ${e.toString()}");
      return "Terjadi kesalahan: ${e.toString()}";
    }
  }

  Future<UserCredential?> loginWithGoogle() async {
    try {
      Get.log("Memulai Google Sign-In...");

      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        Get.log("Login dibatalkan oleh pengguna.");
        return null;
      }

      Get.log("Google Sign-In berhasil. Email: ${googleUser.email}");

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      Get.log("Google Authentication berhasil didapatkan.");
      Get.log("Access Token: ${googleAuth.accessToken}");
      Get.log("ID Token: ${googleAuth.idToken}");

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      Get.log("Mencoba login ke Firebase dengan credential Google...");

      final UserCredential userCredential =
          await _auth.signInWithCredential(credential);

      Get.log("Login Firebase berhasil!");
      Get.log("User ID: ${userCredential.user?.uid}");
      Get.log("Display Name: ${userCredential.user?.displayName}");
      Get.log("Email: ${userCredential.user?.email}");
      Get.log("Photo URL: ${userCredential.user?.photoURL}");

      Get.snackbar('Berhasil masuk', 'Selamat datang!');
      Get.offAllNamed('/home-screen');

      return userCredential;
    } catch (e) {
      Get.log("Error saat login dengan Google: ${e.toString()}");
      return null;
    }
  }

  Future<void> checkLoginStatus() async {
    User? user = _auth.currentUser;
    await user?.reload();
    user = _auth.currentUser;

    if (user != null) {
      firebaseUser.value = user;
      isAuthenticated.value = true;
      Get.log("✅ Logged in as: ${user.email}");
      Get.offAllNamed('/home-screen');
    } else {
      isAuthenticated.value = false;
      Get.log("🔒 Belum login");
      Get.offAllNamed('/getStarted');
    }
  }

  Future<void> logout() async {
    await _auth.signOut();

    if (await googleSignIn.isSignedIn()) {
      await googleSignIn.signOut();
    }

    isAuthenticated.value = false;
    Get.offAllNamed('/');
  }
}
