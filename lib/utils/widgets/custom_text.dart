import 'package:flutter/material.dart';

class CustomText {
  static Text customTextBasic( 
      {required String? text,
      required double fontSize,
      FontWeight? fontWeight,
      Color? color}) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontFamily: 'Sora',
        color: color ?? Colors.white,
      ),
    );
  }
}
