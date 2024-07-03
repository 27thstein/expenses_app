import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/features/Auth/screens/forgot_password/password_reset_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeadingText(
              title: ExStrings.forgotPassword,
              subTitle: ExStrings.otpPageSubtext,
              onBackPressed: () {
                Navigator.pop(context);
              },
            ),

            /// OTP FIELD
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Pinput(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                length: 4,
                hapticFeedbackType: HapticFeedbackType.lightImpact,
                defaultPinTheme: PinTheme(
                  height: 65,
                  width: 65,
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: ExColors.grey),
                      borderRadius: BorderRadius.circular(16),
                      color: ExColors.lightGrey),
                ),
                focusedPinTheme: PinTheme(
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.transparent),
                ),
              ),
            ),

            const SizedBox(
              height: 35,
            ),

            /// SUBMIT BUTTON

            CustomButton(
              text: ExStrings.submit,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PasswordResetScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
