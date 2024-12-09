import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultLayout extends StatelessWidget {
  final Widget? child;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final double? topPadding;
  final double? bottomPadding;
  final double? leftPadding;
  final double? rightPadding;
  final bool? scrollable;

  const DefaultLayout(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.center,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.topPadding = SizeConstants.defaultDistance,
      this.bottomPadding = SizeConstants.defaultDistance,
      this.leftPadding = SizeConstants.defaultDistance,
      this.rightPadding = SizeConstants.defaultDistance,
      this.scrollable = false,
      this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        foregroundColor: ColorConstants.white,
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyleManager.getMediumStyle(
              color: ColorConstants.white, fontSize: 32),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: topPadding!.h,
            bottom: bottomPadding!.h,
            left: leftPadding!.w,
            right: rightPadding!.w),
        child: !scrollable!
            ? child
            : SingleChildScrollView(
                child: child,
              ),
      ),
    );
  }
}
