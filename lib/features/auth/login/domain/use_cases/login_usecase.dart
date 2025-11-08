import 'package:ecommerce_app/features/auth/login/domain/repositories/login_repo.dart';

class LoginUseCase {
  LoginRepo authRepo;
  LoginUseCase(this.authRepo);
  Future<bool> call(String email, String password) =>
      authRepo.signIn(email, password);
}
