import 'package:expenses_app/features/Auth/screens/onboarding/onboarding.dart';
import 'package:expenses_app/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ExAppTheme.lightTheme,
      
      themeMode: ThemeMode.light,
      home: const OnboardingScreen(),
    );
  }
}
