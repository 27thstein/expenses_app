import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/custom_text_field.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/features/Auth/screens/login/login_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Heading
            HeadingText(
              title: ExStrings.register,
              subTitle: ExStrings.registerPageSubtext,
              onBackPressed: () {
                Navigator.pop(context);
              },
            ),

            /// EMAIL INPUT FIELD
            const CustomTextField(
              label: ExStrings.email,
              hintText: ExStrings.emailPlaceholder,
              prefixIcon: ExImages.atIcon,
            ),

            const SizedBox(
              height: 28,
            ),

            /// NAME FIELD
            const CustomTextField(
              label: ExStrings.yourName,
              hintText: ExStrings.yourNamePlaceholder,
              prefixIcon: ExImages.userIcon,
            ),

            const SizedBox(
              height: 28,
            ),

            /// PASSWORD FIELD
            const CustomTextField(
              label: ExStrings.yourPassword,
              hintText: ExStrings.passwordPlaceholder,
              prefixIcon: ExImages.keyLockIcon,
            ),

            const SizedBox(
              height: 30,
            ),

            /// REGISTER BUTTON
            CustomButton(
              text: ExStrings.register,
              onPressed: () {},
            ),

            const SizedBox(
              height: 35,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ExStrings.alreadyHaveAcc,
                    style: ExTextTheme.lightTextTheme.titleMedium!
                        .copyWith(fontSize: 16)),
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
