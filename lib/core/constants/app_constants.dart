class AppConstants {
  //* constraints
  static const double maxUnderweightMinNormal = 18.5;
  static const int maxNormalMinOverweight = 25;
  static const int maxOverweightMinObese = 30;
  static const int maxObeseMinExtremelyObese = 35;

  //* overAll values
  static const String underWeight = "UNDERWEIGHT";
  static const String normal = "NORMAL";
  static const String overWeight = "OVERWEIGHT";
  static const String obese = "OBESE";
  static const String extremelyObese = "EXTREMELY OBESE";

//* Overall messages
  static const String underWeightMessage =
      "You are underweight.\nYou might need to gain some weight.";
  static const String normalMessage =
      "You have a normal body weight.\nGood job!";
  static const String overWeightMessage =
      "You are slightly overweight.\nConsider adopting a healthier lifestyle.";
  static const String obeseMessage =
      "You are obese.\nIt's important to work on improving your health.";
  static const String extremelyObeseMessage =
      "You are extremely obese.\nPlease consult with a healthcare professional for guidance.";
}
