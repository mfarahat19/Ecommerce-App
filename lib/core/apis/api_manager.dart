import 'package:dio/dio.dart';
import 'package:ecommerce_app/core/apis/end_points.dart';
import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';

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

  Future<bool> register({required UserEntity user}) async {
    final response = await dio.post("$baseUrl$signUpEndPoint", data: {
      'email': user.email,
      'password': user.password,
      "rePassword": user.password,
      'phone': user.phone,
      'name': user.name,
    });
    print("########################### {------$baseUrl$signUpEndPoint}");
    if (response.statusCode == 200 || response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
