import 'package:bmi_calc/presentation/calc/calc_cubit.dart';
import 'package:bmi_calc/presentation/calc/calc_states.dart';
import 'package:bmi_calc/presentation/calc/widgets/functions_lower_container.dart';
import 'package:bmi_calc/presentation/calc/widgets/input_upper_container.dart';
import 'package:bmi_calc/presentation/calc/widgets/result_middle_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalcPage extends StatelessWidget {
  const CalcPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: InputUpperContainer(
              num1Controller: context.read<CalcCubit>().firstNumberController,
              num2Controller: context.read<CalcCubit>().secondNumberController,
              num1Node: context.read<CalcCubit>().firstNumberNode,
              num2Node: context.read<CalcCubit>().secondNumberNode,
              formKey: context.read<CalcCubit>().formStateKey,
              validator: context.read<CalcCubit>().validateDouble,
              num1OnFieldSubmitted: (value) => FocusScope.of(context)
                  .requestFocus(context.read<CalcCubit>().secondNumberNode),
            ),
          ),
          Expanded(
            flex: 1,
            child: BlocBuilder<CalcCubit, CalcStates>(
              builder: (context, state) {
                String result = "";
                if (state is CalcResultChanged) {
                  result = state.result;
                }
                return ResultMiddleRow(
                  result: result,
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: FunctionsLowerContainer(
              addingFunc: () {
                context.read<CalcCubit>().add();
              },
              divisionFunc: () {
                context.read<CalcCubit>().divide();
              },
              multiplingFunc: () {
                context.read<CalcCubit>().multiply();
              },
              subtractingFunc: () {
                context.read<CalcCubit>().subtract();
              },
            ),
          ),
        ],
      ),
    );
  }
}
