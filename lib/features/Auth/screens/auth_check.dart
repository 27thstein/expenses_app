import 'package:expenses_app/bottom_nav_bar.dart';
import 'package:expenses_app/features/Auth/screens/login/login_screen.dart';
import 'package:expenses_app/features/Auth/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../Home/home_screen.dart';
import '../auth_bloc/auth_bloc.dart';

class AuthCheck extends StatelessWidget {
  const AuthCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is AuthAuthenticated) {
          return const BottomNavBar();
        } else if (state is AuthUnauthenticated || state is AuthAppStarted) {
          return const OnboardingScreen();
        } else if (state is AuthUnauthenticated || state is AuthFailure) {
          return  const LoginScreen();
        } else {
          return  const LoginScreen();
        }
      },
    );
  }
}
