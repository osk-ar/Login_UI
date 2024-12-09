import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:bmi_calc/presentation/cubits/bmi_cubit.dart';
import 'package:bmi_calc/presentation/states/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeightSlider extends StatelessWidget {
  const HeightSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BMICubit, BMIState>(
      builder: (context, state) {
        return Expanded(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.only(
                top: SizeConstants.smallDistance.h,
                bottom: SizeConstants.smallDistance.h),
            decoration: BoxDecoration(
              color: ColorConstants.surfaceColor,
              borderRadius:
                  BorderRadius.circular(SizeConstants.defaultDistance.r),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: SizeConstants.defaultDistance.h,
                ),
                Text(
                  "Height",
                  style: TextStyleManager.getRegularStyle(
                      color: ColorConstants.secondaryColor, fontSize: 24),
                ),
                const Spacer(),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            context.read<BMICubit>().height.round().toString(),
                        style: TextStyleManager.getMediumStyle(
                            color: ColorConstants.white, fontSize: 48),
                      ),
                      TextSpan(
                        text: "cm",
                        style: TextStyleManager.getLightStyle(
                            color: ColorConstants.secondaryColor, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Slider(
                  thumbColor: ColorConstants.primaryColor,
                  activeColor: ColorConstants.primaryColor,
                  inactiveColor: ColorConstants.secondaryColor,
                  min: 50,
                  max: 300,
                  value: context.read<BMICubit>().height,
                  onChanged: (value) {
                    context.read<BMICubit>().changeHeight(value);
                  },
                ),
                SizedBox(
                  height: SizeConstants.defaultDistance.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
