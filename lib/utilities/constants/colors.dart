import 'package:flutter/material.dart';




class ExColors {
  ExColors._();


  // App Basic Colors
  static const Color primary = Color(0xFFEBB2FF);
  static const Color secondary = Color(0xFFA7FED9);
  static const Color accent = Color(0xFFFFEEB2);
  static const Color tertiary = Color(0xFFFECCA7);
  static const Color blueAccent = Color(0xFFA7F4FE);

  // Grdaient Colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xFF1F4690),
        Color(0xFF1F4690),
        Color(0xFF1F4690),
      ]);


  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6C757D);
  static const Color textWhite = Colors.white;

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static  Color darkContainer = ExColors.white.withOpacity(0.1);

  // Button  Colors
  static const Color buttonPrimary = Color(0xFF1D1D21);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFF1D1D21);
  static const Color borderSecondary = Color(0xFFE6E6E6);
  static const Color borderPlus = Color(0xFFE3E7EC);


  // Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1F4690);

  // Neutral Shades
  static const Color black = Color(0xFF1D1D21);
  static const Color darkerGrey = Color(0xFF333333);
  static const Color darkGrey = Color(0xFF666666);
  static const Color grey = Color(0xFFCCCCCC);
  static const Color softGrey = Color(0xFFF5F5F5);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);


}
