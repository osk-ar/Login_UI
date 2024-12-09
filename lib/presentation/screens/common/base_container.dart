import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseContainer extends StatelessWidget {
  final minimumSize = 50;
  final double leftMargin;
  final double rightMargin;
  final String title;
  final int value;
  final void Function()? increament;
  final void Function()? decreament;
  const BaseContainer(
      {super.key,
      this.leftMargin = 0,
      this.rightMargin = 0,
      required this.title,
      required this.value,
      required this.increament,
      required this.decreament});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
            left: leftMargin,
            right: rightMargin,
            top: SizeConstants.smallDistance.w,
            bottom: SizeConstants.defaultDistance.w),
        decoration: BoxDecoration(
          color: ColorConstants.surfaceColor,
          borderRadius: BorderRadius.circular(SizeConstants.defaultDistance.r),
        ),
        child: Column(
          children: [
            SizedBox(
              height: SizeConstants.smallDistance.h,
            ),
            Text(
              title,
              style: TextStyleManager.getRegularStyle(
                  color: ColorConstants.secondaryColor, fontSize: 24),
            ),
            SizedBox(
              height: SizeConstants.defaultDistance.h,
            ),
            Text(
              value.toString(),
              style: TextStyleManager.getMediumStyle(
                  color: ColorConstants.white, fontSize: 48),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: ColorConstants.secondaryColor,
                    foregroundColor: ColorConstants.white,
                    minimumSize: Size(minimumSize.w, minimumSize.h),
                  ),
                  color: ColorConstants.white,
                  onPressed: increament,
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: ColorConstants.secondaryColor,
                    foregroundColor: ColorConstants.white,
                    minimumSize: Size(minimumSize.w, minimumSize.h),
                  ),
                  color: ColorConstants.white,
                  onPressed: decreament,
                  icon: const Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(
              height: SizeConstants.defaultDistance.h,
            ),
          ],
        ),
      ),
    );
  }
}
