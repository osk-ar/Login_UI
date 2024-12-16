import 'package:bmi_calc/config/routes/route_constants.dart';
import 'package:bmi_calc/config/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login_UI',
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.homeScreenRoute,
      ),
    );
  }
}
