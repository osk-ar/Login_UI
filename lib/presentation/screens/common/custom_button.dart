import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustomButton({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorConstants.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(SizeConstants.smallDistance.w),
          ),
        ),
        child: Text(
          title,
          style: TextStyleManager.getRegularStyle(
              color: ColorConstants.white, fontSize: 32),
        ),
      ),
    );
  }
}
