import 'package:expenses_app/features/Auth/screens/login/login_screen.dart';
import 'package:expenses_app/features/Auth/screens/signup/signup_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import '../../../../utilities/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 130,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 18),
            child: Image.asset(ExImages.logo1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, bottom: 7),
            child: Text(
              ExStrings.welcomeTo,
              style: ExTextTheme.lightTextTheme.titleMedium!
                  .copyWith(fontSize: 24, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 12),
            child: Image.asset(ExImages.logo2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, bottom: 53),
            child: Text(
              ExStrings.onboardingSubTitle2,
              style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0, bottom: 18),
            child: Text(
              ExStrings.letsGetStarted,
              style: ExTextTheme.lightTextTheme.headlineMedium!.copyWith(
                fontSize: 17.3,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              width: ExDeviceUtils.getScreenWidth(context),
              child: OutlinedButton(
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ExImages.google),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(ExStrings.continueWithGoogle),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 24.0, bottom: 44, top: 18, right: 24),
            child: SizedBox(
              width: ExDeviceUtils.getScreenWidth(context),
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                      (route) => false);
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(ExImages.atLogo),
                    const SizedBox(
                      width: 8,
                    ),
                    const Text(ExStrings.continueWithEmail),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(ExStrings.alreadyHaveAcc,
                  style: ExTextTheme.lightTextTheme.titleMedium!
                      .copyWith(fontSize: 16)),
              const SizedBox(
                width: 8,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                child: Text(
                  ExStrings.login,
                  style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                    fontSize: 16,
                    color: const Color(0xFF1A38F8),
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
