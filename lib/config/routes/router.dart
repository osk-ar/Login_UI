import 'package:bmi_calc/config/dependency_injection.dart';
import 'package:bmi_calc/config/routes/route_constants.dart';
import 'package:bmi_calc/presentation/calc/calc_cubit.dart';
import 'package:bmi_calc/presentation/calc/calc_page.dart';
import 'package:bmi_calc/presentation/login_ui/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      case Routes.calcScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => sl<CalcCubit>(),
            child: const CalcPage(),
          ),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text("No Route Found"),
        ),
        body: const Center(child: Text("No Route Found")),
      ),
    );
  }
}
