import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class UserDetailPage extends StatefulWidget {
  final int userId;

  const UserDetailPage({super.key, required this.userId});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  Map<String, dynamic>? userData;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchUserDetail(widget.userId);
  }

  Future<void> fetchUserDetail(int userId) async {
    Dio dio = Dio();
    try {
      final response = await dio.get('https://reqres.in/api/users/$userId');
      setState(() {
        userData = response.data['data'];
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Detail'),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : userData == null
              ? const Center(child: Text('Failed to load user details'))
              : Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipOval(
                        child: Image.network(
                          userData!['avatar'],
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return const Icon(
                              Icons.error,
                              size: 120,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '${userData!['first_name']} ${userData!['last_name']}',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        userData!['email'],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
    );
  }
}
