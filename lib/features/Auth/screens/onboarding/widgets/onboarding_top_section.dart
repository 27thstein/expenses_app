part of '../onboarding.dart';

class OnboardingTopSection extends StatelessWidget {
  final String appName;
  final String centerImage;
  const OnboardingTopSection({
    super.key,
    required this.appName,
    required this.centerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Heading Image
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(ExImages.starLarge),
            Image.asset(ExImages.petalImage)
          ],
        ),

        /// Center Image
        Padding(
          padding: EdgeInsets.only(
              top: ExDeviceUtils.getScreenHeight(context) * 0.19,
              left: ExDeviceUtils.getScreenWidth(context) * 0.1),
          child: Image.asset(centerImage),
        ),

        /// App Name
        Padding(
          padding: EdgeInsets.only(
              top: ExDeviceUtils.getScreenHeight(context) / 2.8,
              left: ExDeviceUtils.getScreenWidth(context) / 3.05),
          child: Text(
            appName,
            style: ExTextTheme.darkTextTheme.headlineLarge,
          ),
        ),

        /// Ellipse Image
        Padding(
          padding: EdgeInsets.only(
              top: ExDeviceUtils.getScreenHeight(context) * 0.46),
          child: Image.asset(ExImages.ellipse),
        ),
      ],
    );
  }
}
