import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/utils/enums.dart';
import 'package:ecommerce_app/features/auth/login/presentation/bloc/login_event.dart';
import 'package:ecommerce_app/features/auth/register/domain/use_cases/register_usecase.dart';
import 'package:ecommerce_app/features/auth/register/presentation/bloc/register_event.dart';
import 'package:ecommerce_app/features/auth/register/presentation/bloc/register_state.dart';

class RegisterBloc extends Bloc<AuthEvent, RegisterState> {
  RegisterUseCase registerUseCase;
  RegisterBloc(this.registerUseCase) : super(RegisterInit()) {
    on<AuthEvent>(
      (event, emit) {},
    );
    on<RegisterEvent>(
      (event, emit) async {
        emit(state.copyWith(State: RequestState.loading));
        bool registered = await registerUseCase.call(event.user);
        if (registered) {
          emit(
            state.copyWith(
              State: RequestState.success,
              Registered: true,
            ),
          );
        } else {
          emit(
            state.copyWith(
                State: RequestState.error,
                Registered: false,
                error: 'RequestState.success,'),
          );
        }
      },
    );
  }
}
