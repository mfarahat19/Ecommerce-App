import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';

abstract class RegisterRemoteDS {
  Future<bool> register(UserEntity user);
}
