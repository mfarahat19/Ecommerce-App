import 'package:ecommerce_app/features/auth/domain/entity/user_entity.dart';

abstract class AuthRepo {
  Future<bool> signIn(String email, String password);

  Future<bool> signUp(SignupEntity user);
}
