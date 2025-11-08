import 'package:ecommerce_app/features/auth/login/domain/entities/user_entity.dart';
import 'package:ecommerce_app/features/auth/login/presentation/bloc/login_event.dart';

class RegisterEvent extends AuthEvent {
  UserEntity user;
  RegisterEvent(this.user);
}
