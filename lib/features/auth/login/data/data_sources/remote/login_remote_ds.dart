import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';

abstract class LoginRemoteDs {
  Future<bool> signIn(String email, String password);
  Future<bool> signUp(UserEntity user);
}
