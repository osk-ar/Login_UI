import 'package:bmi_calc/config/routes/route_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/data_intent.dart';
import 'package:bmi_calc/core/helpers/extentions.dart';
import 'package:bmi_calc/presentation/cubits/bmi_cubit.dart';
import 'package:bmi_calc/presentation/screens/common/base_container.dart';
import 'package:bmi_calc/presentation/screens/common/custom_button.dart';
import 'package:bmi_calc/presentation/screens/common/default_layout.dart';
import 'package:bmi_calc/presentation/screens/home_page/widgets/gender_selection.dart';
import 'package:bmi_calc/presentation/screens/home_page/widgets/height_slider.dart';
import 'package:bmi_calc/presentation/states/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: [
          // gender selection
          const GenderSelectionBar(),
          const HeightSlider(),
          BlocBuilder<BMICubit, BMIState>(
            builder: (context, state) {
              return Expanded(
                child: Row(
                  children: [
                    //* Weight Tab
                    BaseContainer(
                      rightMargin: SizeConstants.smallDistance.w,
                      title: "Weight",
                      value: context.read<BMICubit>().weight,
                      increament: () {
                        context.read<BMICubit>().changeWeight(context, 1);
                      },
                      decreament: () {
                        context.read<BMICubit>().changeWeight(context, -1);
                      },
                    ),
                    //* Age Tab
                    BaseContainer(
                      leftMargin: SizeConstants.smallDistance.w,
                      title: "Age",
                      value: context.read<BMICubit>().age,
                      increament: () {
                        context.read<BMICubit>().changeAge(context, 1);
                      },
                      decreament: () {
                        context.read<BMICubit>().changeAge(context, -1);
                      },
                    ),
                  ],
                ),
              );
            },
          ),
          CustomButton(
            title: "Calculate",
            onPressed: () {
              DataIntent.setScore(context.read<BMICubit>().calculateScore());
              context.pushNamed(Routes.infoScreenRoute);
            },
          )
        ],
      ),
    );
  }
}
