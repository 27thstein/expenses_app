import 'package:expenses_app/utilities/theme/custom_themes/elevated_button_theme.dart';
import 'package:expenses_app/utilities/theme/custom_themes/outlined_button_theme.dart';
import 'package:expenses_app/utilities/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/text_field_theme.dart';

class ExAppTheme {
  ExAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'poppins',
      brightness: Brightness.light,
      primaryColor: const Color(0xFF272727),
      textTheme: ExTextTheme.lightTextTheme,
      outlinedButtonTheme: ExOutlinedButtonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: ExElevatedButtonTheme.lightElevatedBtnTheme,
      checkboxTheme: ExCheckBoxTheme.lightCheckboxTheme,
      inputDecorationTheme: ExTextFormFieldTheme.lightInputDecorationTheme);
}
