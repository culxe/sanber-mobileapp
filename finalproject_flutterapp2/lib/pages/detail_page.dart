import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:finalproject_flutterapp2/const/app_style.dart';
import 'package:finalproject_flutterapp2/const/color.dart';
import 'package:finalproject_flutterapp2/user/service/user_service.dart';
import 'package:finalproject_flutterapp2/user/model/user_model.dart';

class NewsController extends GetxController {
  var newsList = <NewspaperModel>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchNews();
    super.onInit();
  }

  void fetchNews() async {
    try {
      isLoading(true);
      var news = await NewspaperService().fetchNewspapers();
      newsList.assignAll(news);
    } catch (e) {
      Get.snackbar("Error", "Failed to load news");
    } finally {
      isLoading(false);
    }
  }
}

class DetailPage extends StatelessWidget {
  final NewsController newsController = Get.put(NewsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 30, left: 26),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'News',
                    style: poppinsMedium.copyWith(fontSize: 20),
                  ),
                ),
              ),
            ),
            Obx(() {
              if (newsController.isLoading.value) {
                return Center(child: CircularProgressIndicator());
              } else if (newsController.newsList.isEmpty) {
                return Center(child: Text('No news available'));
              } else {
                return ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: newsController.newsList.length,
                  itemBuilder: (context, index) {
                    final news = newsController.newsList[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            news.image,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 13),
                          Text(
                            'Today',
                            style: poppinsRegular.copyWith(fontSize: 12),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Text(
                              news.title,
                              style: poppinsBold.copyWith(fontSize: 14),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            news.description,
                            style: poppinsRegular.copyWith(fontSize: 12),
                          ),
                          const SizedBox(height: 20),
                          Divider(color: greyColor, thickness: 0.5),
                        ],
                      ),
                    );
                  },
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
