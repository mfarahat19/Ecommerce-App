import 'package:ecommerce_app/features/auth/data/data%20source/remote/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entity/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDs authRemoteDs;
  AuthRepoImpl(this.authRemoteDs);

  @override
  Future<bool> signIn(String email, String password) =>
      authRemoteDs.signIn(email, password);

  @override
  Future<bool> signUp(SignupEntity user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
