import 'package:flutter/material.dart';

class ExTextFormFieldTheme {
  ExTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    //constraints: BoxConstraints.expand(height: 14.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.grey),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1.3, color: Color(0xffE3E7EC)),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(width: 1.3, color: Colors.black12)),

    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(width: 1.3, color:Color(0xFF272727),),),

    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1.3, color: Colors.red),
    ),

    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(width: 1.3, color: Colors.orange),
    ),
  );

  // static  InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
  //   errorMaxLines: 3,
  //   prefixIconColor: Colors.grey,
  //   suffixIconColor: Colors.grey,
  //   //constraints: BoxConstraints.expand(height: 14.inputFieldHeight),
  //   labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
  //   hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
  //   errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
  //   floatingLabelStyle: const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),
  //   border: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(14),
  //     borderSide: const BorderSide(width: 1, color: Colors.grey),
  //   ),
  //   enabledBorder: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14),
  //       borderSide: const BorderSide(width: 1, color: Colors.grey)
  //   ),
  //
  //   focusedBorder: const OutlineInputBorder().copyWith(
  //       borderRadius: BorderRadius.circular(14),
  //       borderSide: const BorderSide(width: 1, color: Colors.white)
  //   ),
  //
  //   errorBorder: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(14),
  //     borderSide: const BorderSide(width: 1, color: Colors.red),
  //   ),
  //
  //   focusedErrorBorder: const OutlineInputBorder().copyWith(
  //     borderRadius: BorderRadius.circular(14),
  //     borderSide: const BorderSide(width: 1, color: Colors.orange),
  //   ),
  //
  // );
}
