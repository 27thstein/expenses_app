import 'package:flutter/material.dart';


class ExCheckBoxTheme {
  ExCheckBoxTheme._();


  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected))
      {
        return Colors.white;
      }else
      {
        return Colors.black;
      }
    }),

    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected))
      {
        return const Color(0xFF1F4690);
      }else
      {
        return Colors.transparent;
      }
    }),

  );



  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected))
      {
        return Colors.white;
      }else
      {
        return Colors.black;
      }
    }),

    fillColor: WidgetStateProperty.resolveWith((states) {
      if(states.contains(WidgetState.selected))
      {
        return const Color(0xFF1F4690);
      }else
      {
        return Colors.transparent;
      }
    }),

  );

}
