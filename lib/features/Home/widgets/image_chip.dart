import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class ImageChip extends StatelessWidget {
  final String image;
  final String label;
  const ImageChip({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          width: 66,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: ExColors.semiLight),
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(fit: BoxFit.cover, image),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  label,
                  style: ExTextTheme.lightTextTheme.bodyMedium!
                      .copyWith(color: ExColors.black),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
