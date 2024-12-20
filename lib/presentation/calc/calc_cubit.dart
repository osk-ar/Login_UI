import 'package:bmi_calc/presentation/calc/calc_states.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcCubit extends Cubit<CalcStates> {
  CalcCubit() : super(CalcInitial());
  final TextEditingController firstNumberController = TextEditingController();
  final TextEditingController secondNumberController = TextEditingController();
  FocusNode firstNumberNode = FocusNode();
  FocusNode secondNumberNode = FocusNode();
  final GlobalKey<FormState> formStateKey = GlobalKey<FormState>();

  String? validateDouble(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field cannot be empty';
    }
    final parsedValue = double.tryParse(value);
    if (parsedValue == null) {
      return 'Please enter a valid number';
    }
    return null;
  }

  void add() {
    if (!formStateKey.currentState!.validate()) {
      return;
    }

    double num1 = double.parse(firstNumberController.text);
    double num2 = double.parse(secondNumberController.text);
    print(num1);
    print(num2);
    double result = num1 + num2;

    emit(CalcResultChanged(result: result.toStringAsFixed(2)));
  }

  void subtract() {
    if (!formStateKey.currentState!.validate()) {
      return;
    }

    double num1 = double.parse(firstNumberController.text);
    double num2 = double.parse(secondNumberController.text);

    double result = num1 - num2;
    emit(CalcResultChanged(result: result.toStringAsFixed(2)));
  }

  void multiply() {
    if (!formStateKey.currentState!.validate()) {
      return;
    }

    double num1 = double.parse(firstNumberController.text);
    double num2 = double.parse(secondNumberController.text);

    double result = num1 * num2;
    emit(CalcResultChanged(result: result.toStringAsFixed(2)));
  }

  void divide() {
    if (!formStateKey.currentState!.validate()) {
      return;
    }

    double num1 = double.parse(firstNumberController.text);
    double num2 = double.parse(secondNumberController.text);

    double result = num1 / num2;
    emit(CalcResultChanged(result: result.toStringAsFixed(2)));
  }
}
