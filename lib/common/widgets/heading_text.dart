import 'package:expenses_app/utilities/constants/image_strings.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String title;
  final String subTitle;
  final VoidCallback onBackPressed;
  const HeadingText(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 10, bottom: 37),
          child: TextButton(
            onPressed: onBackPressed,
            child: Image.asset(ExImages.backIcon),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            bottom: 17,
          ),
          child: Text(
            title,
            style: ExTextTheme.lightTextTheme.titleLarge!
                .copyWith(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 24.0,
            right: 24,
            bottom: 39,
          ),
          child: Text(
            subTitle,
            style: ExTextTheme.lightTextTheme.titleMedium!
                .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
