part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}


final class AuthAuthenticated extends AuthState {
  final String token;

  AuthAuthenticated({required this.token});
}
final class AuthAppStarted extends AuthState {
  final String token;

  AuthAppStarted({required this.token});
}

final class AuthUnauthenticated extends AuthState {}

final class AuthFailure extends AuthState {
  final String error;

  AuthFailure({required this.error});
}
