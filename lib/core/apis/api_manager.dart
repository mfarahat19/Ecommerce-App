import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/apis/end_points.dart';

class ApiManager {
  final Dio dio;
  ApiManager(this.dio);

  Future<bool> login({String? email, String? password}) async {
    final response = await dio.post("$baseUrl$loginEndPoint",
        data: {'email': email, 'password': password});
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
