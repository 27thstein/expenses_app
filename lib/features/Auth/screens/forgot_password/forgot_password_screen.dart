import 'package:expenses_app/common/widgets/custom_button.dart';
import 'package:expenses_app/common/widgets/custom_text_field.dart';
import 'package:expenses_app/common/widgets/heading_text.dart';
import 'package:expenses_app/features/Auth/screens/otp_screen/otp_screen.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// HEAD SECTION
            HeadingText(
              title: ExStrings.forgotPassword,
              subTitle: ExStrings.forgotPasswordSubtext,
              onBackPressed: () {
                Navigator.pop(context);
              },
            ),

            /// EMAIL FIELD
            const CustomTextField(
              label: ExStrings.email,
              hintText: ExStrings.emailPlaceholder,
              prefixIcon: ExImages.atIcon,
            ),

            const SizedBox(
              height: 29,
            ),

            /// SUBMIT BUTTON

            CustomButton(
              text: ExStrings.submit,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const OtpScreen(),
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
