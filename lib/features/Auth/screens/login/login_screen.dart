import 'package:expenses_app/bottom_nav_bar.dart';
import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/custom_text_field.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/common/widgets/logo_text_button.dart';
import 'package:expenses_app/features/Auth/screens/forgot_password/forgot_password_screen.dart';
import 'package:expenses_app/features/Auth/screens/signup/signup_screen.dart';
import 'package:expenses_app/features/Home/home_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
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
            // TITLE , SUBTITLE BACK BUTTON
            HeadingText(
              title: ExStrings.login,
              subTitle: ExStrings.loginPageSubtext,
              onBackPressed: () {
                Navigator.pop(context);
              },
            ),

            // EMAIL FIELD

            const CustomTextField(
              label: ExStrings.email,
              hintText: ExStrings.emailPlaceholder,
              prefixIcon: ExImages.atIcon,
            ),

            const SizedBox(
              height: 28,
            ),

            // PASSWORD FIELD

            const CustomTextField(
              label: ExStrings.yourPassword,
              hintText: ExStrings.passwordPlaceholder,
              prefixIcon: ExImages.keyLockIcon,
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
                        builder: (context) => const ForgotPasswordScreen()),
                  );
                },
                child: Text(
                  ExStrings.forgotPassword,
                  style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                    fontSize: 16,
                    color: const Color(0xFF1A38F8),
                    decoration: TextDecoration.underline,
                    decorationColor: const Color(0xFF1A38F8),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),

            /// LOGIN BUTTON

            CustomButton(
              text: ExStrings.login,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ),
                    (route) => false);
              },
            ),

            const SizedBox(
              height: 10,
            ),

            /// CONTINUE WITH EMAIL BUTTON

            LogoTextButton(
              logo: ExImages.google,
              text: ExStrings.continueWithGoogle,
              onPressed: () {},
            ),

            /// GO TO SIGN UP
            const SizedBox(
              height: 35,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ExStrings.dontHaveAcc,
                    style: ExTextTheme.lightTextTheme.titleMedium!
                        .copyWith(fontSize: 16)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                    );
                  },
                  child: Text(
                    ExStrings.register,
                    style: ExTextTheme.lightTextTheme.titleMedium!.copyWith(
                      fontSize: 16,
                      color: const Color(0xFF1A38F8),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xFF1A38F8),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
