import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:bmi_calc/presentation/cubits/bmi_cubit.dart';
import 'package:bmi_calc/presentation/states/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderSelectionBar extends StatelessWidget {
  const GenderSelectionBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BMICubit, BMIState>(
      builder: (context, state) {
        return Expanded(
          child: Row(
            children: [
              GenderButton(
                rightMargin: SizeConstants.smallDistance.w,
                icon: Icons.male,
                title: "Male",
                color: context.read<BMICubit>().isMaleSelected
                    ? ColorConstants.surfaceColor
                    : ColorConstants.offColor,
                onTap: () {
                  context.read<BMICubit>().changeGenderToMale();
                },
              ),
              GenderButton(
                leftMargin: SizeConstants.smallDistance.w,
                icon: Icons.female,
                title: "Female",
                color: !context.read<BMICubit>().isMaleSelected
                    ? ColorConstants.surfaceColor
                    : ColorConstants.offColor,
                onTap: () {
                  context.read<BMICubit>().changeGenderToFemale();
                },
              )
            ],
          ),
        );
      },
    );
  }
}

class GenderButton extends StatelessWidget {
  final double leftMargin;
  final double rightMargin;
  final String title;
  final IconData icon;
  final Color color;
  final void Function()? onTap;

  const GenderButton({
    super.key,
    this.leftMargin = 0,
    this.rightMargin = 0,
    required this.icon,
    required this.title,
    required this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
            left: leftMargin,
            right: rightMargin,
            bottom: SizeConstants.smallDistance.h),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(SizeConstants.defaultDistance.r),
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: onTap,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Icon(
                    icon,
                    color: ColorConstants.white,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyleManager.getLightStyle(
                      color: ColorConstants.secondaryColor, fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
