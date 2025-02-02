import 'package:dio/dio.dart';
import 'package:finalproject_flutterapp/user/model/user_model.dart';

class NewspaperService {
  Dio dio = Dio();
  static const url =
      'https://gnews.io/api/v4/top-headlines?category=general&lang=en&country=us&max=10&apikey=0c4250cdad2f09c0dd45a8a44bb2942f';

  Future<List<NewspaperModel>> fetchNewspapers() async {
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['articles'] as List;
        return data.map((e) => NewspaperModel.fromJson(e)).toList();
      }
      throw Exception('Failed to load data');
    } catch (e) {
      rethrow;
    }
  }
}
