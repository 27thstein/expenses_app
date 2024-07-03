

import 'package:expenses_app/utilities/device/device_utility.dart';
import 'package:flutter/material.dart';

class LogoTextButton extends StatelessWidget {
  final String text;
  final String logo;
  final VoidCallback onPressed;
  const LogoTextButton({super.key,required this.logo, required this.text, required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: SizedBox(
              width: ExDeviceUtils.getScreenWidth(context),
              child: OutlinedButton(
                onPressed: onPressed,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(logo),
                    const SizedBox(
                      width: 8,
                    ),
                     Text(text),
                  ],
                ),
              ),
            ),
          );
  }
}