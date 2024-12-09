import 'package:bmi_calc/config/routes/route_constants.dart';
import 'package:bmi_calc/presentation/cubits/bmi_cubit.dart';
import 'package:bmi_calc/presentation/screens/home_page/home_page.dart';
import 'package:bmi_calc/presentation/screens/info_page/info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  RouteGenerator._();

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreenRoute:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => BMICubit(),
            child: const HomePage(),
          ),
        );

      case Routes.infoScreenRoute:
        return MaterialPageRoute(
          builder: (context) => const InfoPage(),
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
