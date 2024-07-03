import 'package:expenses_app/utilities/constants/colors.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class IconChip extends StatelessWidget {
  final String icon;
  final Color color;
  final VoidCallback onPressed;
  final String label;
  const IconChip({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ExColors.semiLight),
            child: Center(
              child: CircleAvatar(
                backgroundColor: color,
                child: Image.asset(icon),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            label,
            style: ExTextTheme.lightTextTheme.bodyMedium!
                .copyWith(color: ExColors.darkGrey),
          ),
        ],
      ),
    );
  }
}
