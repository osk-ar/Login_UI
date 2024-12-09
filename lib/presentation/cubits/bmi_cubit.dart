import 'dart:math';

import 'package:bmi_calc/core/helpers/extentions.dart';
import 'package:bmi_calc/presentation/states/bmi_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BMICubit extends Cubit<BMIState> {
  bool isMaleSelected = true;
  double height = 150;
  int weight = 50;
  int age = 30;

  BMICubit() : super(BMIInitial());
  @override
  void emit(BMIState state) {
    if (!isClosed) {
      super.emit(state);
    }
  }

  void changeGenderToMale() {
    isMaleSelected = true;
    emit(BMIGenderChanged(isMaleSelected));
  }

  void changeGenderToFemale() {
    isMaleSelected = false;
    emit(BMIGenderChanged(isMaleSelected));
  }

  void changeHeight(double newHeight) {
    height = newHeight;
    emit(BMIHeightChanged(height));
  }

  void changeWeight(BuildContext context, int value) {
    if (weight <= 1 && value < 0) {
      context.message(message: "0 and Negative Weights are not allowed!");
      return;
    }
    weight += value;
    emit(BMIWeightChanged(weight));
  }

  void changeAge(BuildContext context, int value) {
    if (age <= 1 && value < 0) {
      context.message(message: "0 and Negative Ages are not allowed!");
      return;
    }
    age += value;
    emit(BMIAgeChanged(age));
  }

  double calculateScore() {
    return weight / (pow(height / 100, 2));
  }
}
