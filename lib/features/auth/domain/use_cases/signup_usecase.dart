import 'package:ecommerce_app/features/auth/domain/entity/user_entity.dart';
import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';

class SignupUseCase {
  AuthRepo authRepo;
  SignupUseCase(this.authRepo);
  Future<bool> call(SignupEntity user) => authRepo.signUp(user);
}
