import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/custom_text_field.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/features/Auth/screens/login/login_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadingText(
              title: ExStrings.forgotPassword,
              subTitle: ExStrings.newPasswordPageSubtext,
              onBackPressed: () {
                Navigator.pop(context);
              },
            ),
            const CustomTextField(
              label: ExStrings.enterNewPassword,
              hintText: ExStrings.passwordPlaceholder,
              prefixIcon: ExImages.keyLockIcon,
            ),
            const SizedBox(
              height: 35,
            ),
            CustomButton(
              text: ExStrings.submit,
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const LoginScreen()),
                    (route) => false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
