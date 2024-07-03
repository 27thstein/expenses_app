import 'package:expenses_app/Bottom_nav_bloc/bottom_nav_bloc.dart';
import 'package:expenses_app/features/Auth/screens/onboarding/onboarding.dart';
import 'package:expenses_app/utilities/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ExAppTheme.lightTheme,
        themeMode: ThemeMode.light,
        home: const OnboardingScreen(),
      ),
    );
  }
}
