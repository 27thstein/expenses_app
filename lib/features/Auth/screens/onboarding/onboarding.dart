import 'package:expenses_app/features/Auth/screens/onboarding/welcome_screen.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/sizes.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../utilities/constants/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ExColors.light,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(ExImages.starLarge),
              Image.asset(ExImages.petalImage)
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ExDeviceUtils.getScreenHeight(context) * 0.19,
                left: ExDeviceUtils.getScreenWidth(context) * 0.1),
            child: Image.asset(ExImages.onboardingImage1),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ExDeviceUtils.getScreenHeight(context) / 2.8,
                left: ExDeviceUtils.getScreenWidth(context) / 2.95),
            child: Text(
              ExStrings.appName,
              style: ExTextTheme.darkTextTheme.headlineLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ExDeviceUtils.getScreenHeight(context) * 0.46),
            child: Image.asset(ExImages.ellipse),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: ExDeviceUtils.getScreenHeight(context) * 0.6),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: ExSizes.lg),
              child: Text(ExStrings.onboardingTitle1,
                  style: ExTextTheme.lightTextTheme.headlineLarge!.copyWith(
                      fontFamily: 'ClashGrotes',
                      fontSize: ExSizes.xl + 17,
                      fontWeight: FontWeight.w800)),
            ),
          ),
          Positioned(
            top: ExDeviceUtils.getScreenHeight(context) * 0.784,
            left: ExDeviceUtils.getScreenWidth(context) * 0.7,
            child: SvgPicture.asset(ExImages.starSmall),
          ),
          Column(
            children: [
              SizedBox(
                height: ExDeviceUtils.getScreenHeight(context) * 0.88,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  height: 60,
                  width: ExDeviceUtils.getScreenWidth(context),
                  child: ElevatedButton(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ExStrings.getStarted,
                          style: ExTextTheme.darkTextTheme.headlineSmall,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(Icons.arrow_forward)
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> const WelcomeScreen()),(route) => false);
                    },
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
