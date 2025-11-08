import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/auth/login/presentation/bloc/login_state.dart';

class RegisterState extends AuthState {
  final bool? isRegistered;

  RegisterState({super.requestState, super.errorMessage, this.isRegistered});

  RegisterState copyWith(
      {RequestState? State, String? error, bool? Registered}) {
    return RegisterState(
      requestState: State ?? requestState,
      isRegistered: Registered ?? isRegistered,
      errorMessage: error ?? errorMessage,
    );
  }
}

class RegisterInit extends RegisterState {
  RegisterInit()
      : super(
          requestState: RequestState.init,
          isRegistered: false,
          errorMessage: "",
        );
}
