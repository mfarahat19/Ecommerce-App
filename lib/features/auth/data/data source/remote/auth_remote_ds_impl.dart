import 'package:ecommerce_app/core/apis/api_manager.dart';
import 'package:ecommerce_app/features/auth/data/data%20source/remote/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entity/user_entity.dart';

class AuthRemoteDsImpl implements AuthRemoteDs {
  final ApiManager apiManager;
  AuthRemoteDsImpl(this.apiManager);

  @override
  Future<bool> signIn(String email, String password) {
    return apiManager.login(email: email, password: password);
  }

  @override
  Future<bool> signUp(SignupEntity user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
