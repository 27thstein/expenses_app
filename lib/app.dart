import 'package:expenses_app/Bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:expenses_app/bottom_nav_bar.dart';
import 'package:expenses_app/features/Auth/auth_bloc/auth_bloc.dart';
import 'package:expenses_app/features/Auth/screens/auth_check.dart';
import 'package:expenses_app/utilities/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'features/Auth/repositories/auth_repository.dart';

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;
  final FlutterSecureStorage secureStorage;
  final bool isLoggedIn;

  const MyApp(
      {required this.authRepository,
      required this.secureStorage,
      super.key,
      required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(
              authRepository: authRepository, secureStorage: secureStorage)
            ..add(AppStarted()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ExAppTheme.lightTheme,
        themeMode: ThemeMode.light,
        home: isLoggedIn ? const BottomNavBar() : const AuthCheck(),
      ),
    );
  }
}
