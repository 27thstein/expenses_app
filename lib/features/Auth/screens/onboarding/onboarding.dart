import 'package:expenses_app/features/Auth/screens/onboarding/welcome_screen.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/sizes.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utilities/constants/colors.dart';
part 'widgets/onboarding_top_section.dart';
part 'widgets/onboarding_bottom_section.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ExColors.light,
      body: Stack(
        children: [
          /// TOP SECTION
          OnboardingTopSection(
            appName: ExStrings.appName,
            centerImage: ExImages.onboardingImage1,
          ),

          /// BOTTOM SECTION
          OnboardingBottomSection(
            title: ExStrings.onboardingTitle1,
            buttonText: ExStrings.getStarted,
          ),
        ],
      ),
    );
  }
}
