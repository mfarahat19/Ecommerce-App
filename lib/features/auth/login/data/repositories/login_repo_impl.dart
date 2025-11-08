import 'package:ecommerce_app/features/auth/login/data/data_sources/remote/login_remote_ds.dart';
import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/login/domain/repositories/login_repo.dart';

class LoginRepoImpl implements LoginRepo {
  LoginRemoteDs authRemoteDs;

  LoginRepoImpl(this.authRemoteDs);

  @override
  Future<bool> signIn(String email, String password) =>
      authRemoteDs.signIn(email, password);

  @override
  Future<bool> signUp(UserEntity user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
