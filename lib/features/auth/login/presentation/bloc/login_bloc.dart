import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/auth/login/domain/use_cases/login_usecase.dart';
import 'package:ecommerce_app/features/auth/login/presentation/bloc/login_event.dart';
import 'package:ecommerce_app/features/auth/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<AuthEvent, LoginState> {
  LoginUseCase loginUseCase;
  LoginBloc(this.loginUseCase) : super(LoginInit()) {
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
