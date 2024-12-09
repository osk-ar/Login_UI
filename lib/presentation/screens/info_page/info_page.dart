import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:bmi_calc/core/constants/size_constants.dart';
import 'package:bmi_calc/core/helpers/data_intent.dart';
import 'package:bmi_calc/core/helpers/extentions.dart';
import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:bmi_calc/presentation/screens/common/custom_button.dart';
import 'package:bmi_calc/presentation/screens/common/default_layout.dart';
import 'package:bmi_calc/presentation/screens/info_page/logic/info_logic.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  late final double score;
  @override
  void initState() {
    score = DataIntent.getScore()!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Column(
        children: [
          Text(
            "Your Result",
            style: TextStyleManager.getMediumStyle(
                color: ColorConstants.white, fontSize: 48),
          ),
          SizedBox(
            height: SizeConstants.defaultDistance.h,
          ),
          Expanded(
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    InfoLogic.getTitle(score),
                    style: TextStyleManager.getMediumStyle(
                        color: InfoLogic.getTextColor(score), fontSize: 36),
                  ),
                  Text(
                    score.toStringAsFixed(2),
                    style: TextStyleManager.getMediumStyle(
                        color: ColorConstants.white, fontSize: 48),
                  ),
                  Text(
                    InfoLogic.getMessage(score),
                    textAlign: TextAlign.center,
                    style: TextStyleManager.getMediumStyle(
                        color: ColorConstants.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: SizeConstants.defaultDistance.h,
          ),
          CustomButton(
            title: "Re-Calculate",
            onPressed: () {
              DataIntent.deleteScore();
              context.pop();
            },
          )
        ],
      ),
    );
  }
}
