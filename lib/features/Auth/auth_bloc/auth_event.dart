part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthLoggedIn extends AuthEvent {
  final LoginModel loginModel;

  AuthLoggedIn({required this.loginModel});
}

final class AuthLoggedOut extends AuthEvent {}

final class AuthSignupRequested extends AuthEvent {
  final SignUpModel signUpModel;
  AuthSignupRequested({
    required this.signUpModel,
  });
}

final class AuthLogoutRequested extends AuthState {}

final class AppStarted extends AuthEvent {}
