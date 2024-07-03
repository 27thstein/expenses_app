part of '../onboarding.dart';

class OnboardingBottomSection extends StatelessWidget {
  final String title;
  final String buttonText;
  const OnboardingBottomSection(
      {super.key, required this.buttonText, required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// ONBOARDING TITLE
        Padding(
          padding: EdgeInsets.only(
              top: ExDeviceUtils.getScreenHeight(context) * 0.6),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: ExSizes.lg),
            child: Text(
              title,
              style: ExTextTheme.lightTextTheme.headlineLarge!.copyWith(
                fontFamily: 'ClashGrotesk',
                letterSpacing: 0.96,
                fontSize: 48,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),

        /// STAR IMAGE
        Positioned(
          top: ExDeviceUtils.getScreenHeight(context) * 0.784,
          left: ExDeviceUtils.getScreenWidth(context) * 0.7,
          child: SvgPicture.asset(ExImages.starSmall),
        ),

        /// GET STARTED BUTTON
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
                        buttonText,
                        style: ExTextTheme.darkTextTheme.headlineSmall,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(Icons.arrow_forward)
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()),
                        (route) => false);
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
