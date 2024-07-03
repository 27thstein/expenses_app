import 'package:expenses_app/features/Home/widgets/icon_chip.dart';
import 'package:expenses_app/features/Home/widgets/image_chip.dart';
import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/constants/text_strings.dart';
import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 26.0,
                    backgroundImage: AssetImage(
                      ExImages.user1,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("${ExStrings.hello} James,"),
                      Text(
                        ExStrings.welcomeBack,
                        style: ExTextTheme.lightTextTheme.titleLarge,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: ExDeviceUtils.getScreenWidth(context) * 0.3,
                  ),
                  SvgPicture.asset(height: 24, width: 24, ExImages.bellIcon),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24),
              child: Stack(
                children: [
                  Container(
                    height: 170.0,
                    width: 390,
                    decoration: BoxDecoration(
                        color: ExColors.black,
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  Positioned(
                    top: 24,
                    left: 24,
                    child: Image.asset(ExImages.visa),
                  ),
                  Positioned(
                    left: 156,
                    child: SvgPicture.asset(ExImages.lightPetal),
                  ),
                  Positioned(
                    top: 24,
                    left: 268,
                    child: Image.asset(ExImages.simChip),
                  ),
                  Positioned(
                    top: 92,
                    left: 24,
                    child: Text(
                      ExStrings.availableBalance,
                      style: ExTextTheme.lightTextTheme.titleSmall!
                          .copyWith(color: Colors.white, letterSpacing: 0.32),
                    ),
                  ),
                  Positioned(
                    top: 116,
                    left: 24,
                    child: Text(
                      "\$8520.00",
                      style: ExTextTheme.lightTextTheme.headlineMedium!
                          .copyWith(
                              color: Colors.white,
                              fontFamily: 'ClashGrotesk',
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.46),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 241,
                    child: Text(
                      "EX 06/26",
                      style: ExTextTheme.lightTextTheme.bodyMedium!
                          .copyWith(color: Colors.white, letterSpacing: 0.28),
                    ),
                  ),
                ],
              ),
            ),

            /// ACTIONS SECTION
            const SizedBox(
              height: 16,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconChip(
                    icon: ExImages.telegramIcon,
                    onPressed: () {},
                    color: ExColors.primary,
                    label: ExStrings.send,
                  ),
                  IconChip(
                    icon: ExImages.requestIcon,
                    onPressed: () {},
                    color: ExColors.secondary,
                    label: ExStrings.request,
                  ),
                  IconChip(
                    icon: ExImages.walletIcon,
                    onPressed: () {},
                    color: ExColors.blueAccent,
                    label: ExStrings.eWallet,
                  ),
                  IconChip(
                    icon: ExImages.horizontalDotsIcon,
                    onPressed: () {},
                    color: ExColors.tertiary,
                    label: ExStrings.more,
                  ),
                ],
              ),
            ),

            /// VIEW MORE SECTION
            const SizedBox(
              height: 24,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ExStrings.sentTo,
                    style: ExTextTheme.lightTextTheme.titleLarge!
                        .copyWith(fontSize: 24),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          ExStrings.viewAll,
                          style: ExTextTheme.lightTextTheme.bodyMedium!
                              .copyWith(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Icon(size: 14, Icons.arrow_forward_ios)
                      ],
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(
              height: 16,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ImageChip(
                    image: ExImages.user2,
                    label: 'Heya',
                  ),
                  ImageChip(
                    image: ExImages.user3,
                    label: 'Michel',
                  ),
                  ImageChip(
                    image: ExImages.user4,
                    label: 'Keya',
                  ),
                  ImageChip(
                    image: ExImages.user5,
                    label: 'Maria',
                  ),
                ],
              ),
            ),

            ///  ACTIVITIES SECTION
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ExStrings.activities,
                    style: ExTextTheme.lightTextTheme.titleLarge!
                        .copyWith(fontSize: 24),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ExColors.lightGrey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 6, left: 8, bottom: 6, right: 4),
                      child: Row(
                        children: [
                          Text(
                            ExStrings.viewAll,
                            style: ExTextTheme.lightTextTheme.bodyMedium!
                                .copyWith(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(size: 15, Icons.keyboard_arrow_down)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
