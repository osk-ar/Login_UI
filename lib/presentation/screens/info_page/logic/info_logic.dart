import 'package:bmi_calc/core/constants/app_constants.dart';
import 'package:bmi_calc/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class InfoLogic {
  static Color getTextColor(double score) {
    if (score < AppConstants.maxUnderweightMinNormal) {
      return ColorConstants.limeGreen;
    }
    if (score >= AppConstants.maxUnderweightMinNormal &&
        score < AppConstants.maxNormalMinOverweight) {
      return ColorConstants.green;
    }
    if (score >= AppConstants.maxNormalMinOverweight &&
        score < AppConstants.maxOverweightMinObese) {
      return ColorConstants.yellow;
    }
    if (score >= AppConstants.maxOverweightMinObese &&
        score < AppConstants.maxObeseMinExtremelyObese) {
      return ColorConstants.orange;
    }

    return ColorConstants.red;
  }

  static String getTitle(double score) {
    if (score < AppConstants.maxUnderweightMinNormal) {
      return AppConstants.underWeight;
    }
    if (score >= AppConstants.maxUnderweightMinNormal &&
        score < AppConstants.maxNormalMinOverweight) {
      return AppConstants.normal;
    }
    if (score >= AppConstants.maxNormalMinOverweight &&
        score < AppConstants.maxOverweightMinObese) {
      return AppConstants.overWeight;
    }
    if (score >= AppConstants.maxOverweightMinObese &&
        score < AppConstants.maxObeseMinExtremelyObese) {
      return AppConstants.obese;
    }

    return AppConstants.extremelyObese;
  }

  static String getMessage(double score) {
    if (score < AppConstants.maxUnderweightMinNormal) {
      return AppConstants.underWeightMessage;
    }
    if (score >= AppConstants.maxUnderweightMinNormal &&
        score < AppConstants.maxNormalMinOverweight) {
      return AppConstants.normalMessage;
    }
    if (score >= AppConstants.maxNormalMinOverweight &&
        score < AppConstants.maxOverweightMinObese) {
      return AppConstants.overWeightMessage;
    }
    if (score >= AppConstants.maxOverweightMinObese &&
        score < AppConstants.maxObeseMinExtremelyObese) {
      return AppConstants.obeseMessage;
    }

    return AppConstants.extremelyObeseMessage;
  }
}
