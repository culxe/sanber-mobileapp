import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_13/controller/user_controller.dart';
import 'package:tugas_13/user/page/user_detail_page.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Page'),
      ),
      body: Obx(
        () {
          print("rebuild");
          if (userController.isLoading.value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (userController.users.isEmpty) {
            return const Center(
              child: Text('No users available'),
            );
          }

          return ListView.builder(
            itemCount: userController.users.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  '${userController.users[index].firstName} ${userController.users[index].lastName}',
                ),
                leading: Image.network(
                  userController.users[index].avatar,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
                subtitle: Text(userController.users[index].email),
                onTap: () {
                  Get.to(() =>
                      UserDetailPage(userId: userController.users[index].id));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
