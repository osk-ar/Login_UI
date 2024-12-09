import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

extension Navigation on BuildContext {
  pop() => Navigator.of(this).pop();

  pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }
}

extension SnakBar on BuildContext {
  void message({
    required String message,
    Color? color,
    Color? textColor,
    Duration? duration,
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            message,
            style: TextStyle(color: textColor ?? ColorConstants.red),
          ),
          backgroundColor: color ?? ColorConstants.secondaryColor,
          duration: duration ?? const Duration(seconds: 2),
        ),
      );
}
