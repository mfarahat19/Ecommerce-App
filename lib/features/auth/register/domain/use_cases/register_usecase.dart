import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/register/domain/repositories/register_repo.dart';

class RegisterUseCase {
  RegisterRepo repo;
  RegisterUseCase(this.repo);
  Future<bool> call(UserEntity user) => repo.register(user);
}
