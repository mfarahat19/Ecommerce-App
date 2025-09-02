import 'package:ecommerce_app/features/auth/data/data%20source/remote/auth_remote_ds.dart';
import 'package:ecommerce_app/features/auth/domain/entity/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  AuthRemoteDS authRemoteDS;
  AuthRepoImpl(this.authRemoteDS);

  @override
  Future<bool> signIn(String email, String password) {
    return authRemoteDS.signIn(email, password);
  }

  @override
  Future<bool> signUp(SignupEntity user) {
    // TODO: implement signUp
    throw UnimplementedError();
  }
}
