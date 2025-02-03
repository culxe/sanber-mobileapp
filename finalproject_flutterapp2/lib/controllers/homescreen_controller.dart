import 'package:finalproject_flutterapp2/pages/detail_page.dart';
import 'package:get/get.dart';

class HomescreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    detailpage();
  }

  Future<void> detailpage() async {
    Get.offAll(() => DetailPage());
  }
}
