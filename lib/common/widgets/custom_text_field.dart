

import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String prefixIcon;
  final String hintText;
  const CustomTextField({super.key, required this.label, required this.hintText, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 24.0,
                    bottom: 6,
                  ),
                  child: Text(
                   label,
                    style: ExTextTheme.lightTextTheme.titleMedium!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Image.asset(prefixIcon),
                        hintText: hintText),
                  ),
                ),
              ],
            );
  }
}