import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight black = FontWeight.w900;
}

class TextStyleManager {
  static TextStyle _getTextStyle(double fontSize, FontWeight fontWeight,
      Color color, List<Shadow>? shadows) {
    return TextStyle(
      fontSize: fontSize.sp,
      color: color,
      fontWeight: fontWeight,
      shadows: shadows,
    );
  }

// light style
  static TextStyle getLightStyle(
      {required double fontSize, required Color color, List<Shadow>? shadows}) {
    return _getTextStyle(fontSize, FontWeightManager.light, color, shadows);
  }

// regular style
  static TextStyle getRegularStyle(
      {required double fontSize, required Color color, List<Shadow>? shadows}) {
    return _getTextStyle(fontSize, FontWeightManager.regular, color, shadows);
  }

// medium style
  static TextStyle getMediumStyle(
      {required double fontSize, required Color color, List<Shadow>? shadows}) {
    return _getTextStyle(fontSize, FontWeightManager.medium, color, shadows);
  }

// bold style
  static TextStyle getBoldStyle(
      {required double fontSize, required Color color, List<Shadow>? shadows}) {
    return _getTextStyle(fontSize, FontWeightManager.bold, color, shadows);
  }

// black style
  static TextStyle getBlackStyle(
      {required double fontSize, required Color color, List<Shadow>? shadows}) {
    return _getTextStyle(fontSize, FontWeightManager.black, color, shadows);
  }
}
