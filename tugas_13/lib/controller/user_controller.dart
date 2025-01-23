import 'package:get/get.dart';
import 'package:tugas_13/user/model/user_model.dart';
import 'package:tugas_13/user/service/user_service.dart';

class UserController extends GetxController {
  var users = <UserModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchDataUser();
  }

  Future<void> fetchDataUser() async {
    try {
      isLoading.value = true;
      var fetchedUsers = await UserService().fetchUser();
      users.assignAll(fetchedUsers);
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to fetch users: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
