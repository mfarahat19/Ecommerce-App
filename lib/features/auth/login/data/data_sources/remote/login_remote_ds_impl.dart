import 'package:ecommerce_app/core/apis/api_manager.dart';
import 'package:ecommerce_app/features/auth/login/data/data_sources/remote/login_remote_ds.dart';
import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';

class AuthRemoteDsImpl implements LoginRemoteDs {
  final ApiManager apiManager;
  AuthRemoteDsImpl(this.apiManager);

  @override
  Future<bool> signIn(String email, String password) {
    return apiManager.login(email: email, password: password);
  }

  @override
  Future<bool> signUp(UserEntity user) {
    return apiManager.register(user: user);
  }
}
