import 'package:ecommerce_app/features/auth/domain/entity/user_entity.dart';

abstract class AuthRemoteDS {
  Future<bool> signIn(String email, String password);
  Future<bool> signUp(SignupEntity user);
}
