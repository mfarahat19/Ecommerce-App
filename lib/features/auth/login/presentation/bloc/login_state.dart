import 'package:ecommerce_app/core/utils/enums.dart';

abstract class AuthState {
  final RequestState? requestState;
  final String? errorMessage;

  AuthState({this.requestState, this.errorMessage});
}

class AuthInitial extends AuthState {}

class LoginState extends AuthState {
  bool? loggedIn;
  LoginState({super.requestState, this.loggedIn, super.errorMessage});

  LoginState copyWith(
      {RequestState? requestState, bool? loggedIn, String? errorMessage}) {
    return LoginState(
      requestState: requestState ?? this.requestState,
      loggedIn: loggedIn ?? this.loggedIn,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}

class LoginInit extends LoginState {
  LoginInit()
      : super(
            requestState: RequestState.init, loggedIn: false, errorMessage: '');
}
