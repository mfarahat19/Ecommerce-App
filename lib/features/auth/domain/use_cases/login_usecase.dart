import 'package:ecommerce_app/features/auth/domain/repo/auth_repo.dart';

class LoginUseCase {
  AuthRepo authRepo;
  LoginUseCase(this.authRepo);
  Future<bool> call(String email, String password) =>
      authRepo.signIn(email, password);
}
