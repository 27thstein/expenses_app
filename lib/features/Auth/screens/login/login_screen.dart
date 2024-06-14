import 'package:expenses_app/features/Auth/screens/signup/signup_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0, left: 24, bottom: 37),
              child: TextButton(
                child: Image.asset(ExImages.backIcon),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                bottom: 17,
              ),
              child: Text(
                ExStrings.login,
                style: ExTextTheme.lightTextTheme.titleLarge!
                    .copyWith(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                bottom: 39,
              ),
              child: Text(
                ExStrings.loginPageSubtext,
                style: ExTextTheme.lightTextTheme.titleMedium!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    bottom: 6,
                  ),
                  child: Text(
                    ExStrings.email,
                    style: ExTextTheme.lightTextTheme.titleMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Image.asset(ExImages.atIcon),
                        hintText: ExStrings.emailPlaceholder),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    bottom: 6,
                  ),
                  child: Text(
                    ExStrings.yourPassword,
                    style: ExTextTheme.lightTextTheme.titleMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Image.asset(ExImages.keyLockIcon),
                        hintText: ExStrings.passwordPlaceholder),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text(
                      ExStrings.forgotPassword,
                      style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                        fontSize: 16,
                        color: const Color(0xFF1A38F8),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SizedBox(
                    width: ExDeviceUtils.getScreenWidth(context),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(ExStrings.login),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
