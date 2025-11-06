import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/auth/domain/use_cases/login_usecase.dart';
import 'package:ecommerce_app/features/auth/presentation/bloc/auth_event.dart';
import 'package:ecommerce_app/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthLoginState> {
  LoginUseCase loginUseCase;
  AuthBloc(this.loginUseCase) : super(AuthLoginInit()) {
    on<AuthEvent>(
      (event, emit) {},
    );
    on<LoginEvent>(
      (event, emit) async {
        emit(state.copyWith(requestState: RequestState.loading));
        bool loggedIn = await loginUseCase.call(event.email, event.password);
        if (loggedIn) {
          emit(state.copyWith(
            requestState: RequestState.success,
            loggedIn: true,
          ));
        } else {
          emit(state.copyWith(
            requestState: RequestState.error,
            loggedIn: false,
            errorMessage: "Login Failed",
          ));
        }
      },
    );
  }
}
