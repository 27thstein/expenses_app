import 'package:expenses_app/features/Auth/models/login_model.dart';
import 'package:expenses_app/features/Auth/models/signup_model.dart';
import 'package:expenses_app/features/Auth/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final FlutterSecureStorage secureStorage;
  AuthBloc({required this.authRepository, required this.secureStorage})
      : super(AuthInitial()) {
    on<AppStarted>(_onAppStarted);
    on<AuthLoggedIn>(_onAuthLoggedIn);
    on<AuthLoggedOut>(_onAuthLoggedOut);
    on<AuthSignupRequested>(_onAuthSignupRequested);
  }

  void _onAuthLoggedIn(AuthLoggedIn event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      await authRepository.login(event.loginModel);
      final String? token = await secureStorage.read(key: 'auth_token');
      final String? userId = await secureStorage.read(key: 'user_id');

      if (token != null && userId != null) {
        emit(AuthAuthenticated(
          token: token,
        ));
      } else {
        emit(AuthFailure(error: 'Failed to login.'));
      }
    } catch (error) {
      emit(AuthFailure(error: error.toString()));
    }
  }

  void _onAuthSignupRequested(
      AuthSignupRequested event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      final token = await authRepository.signUp(event.signUpModel);
      emit(AuthAuthenticated(token: token));

      await secureStorage.write(key: 'auth_token', value: token);
      emit(AuthAuthenticated(token: token));
    } catch (error) {
      emit(AuthFailure(error: error.toString()));
    }
  }

  void _onAuthLoggedOut(AuthLoggedOut event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    await secureStorage.delete(key: 'auth_token');
    emit(AuthUnauthenticated());
  }

  void _onAppStarted(AppStarted event, Emitter<AuthState> emit) async {
    final token = await secureStorage.read(key: 'auth_token');
    if (token != null) {
      emit(AuthAppStarted(token: token));
    } else {
      emit(AuthUnauthenticated());
    }
  }
}
