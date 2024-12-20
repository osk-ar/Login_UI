import 'package:bmi_calc/config/dependency_injection.dart';
import 'package:bmi_calc/config/routes/route_constants.dart';
import 'package:bmi_calc/config/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  init();
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
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Login_UI',
        theme: ThemeData().copyWith(
          textSelectionTheme: TextSelectionThemeData(
            selectionColor: Colors.grey.withOpacity(0.4),
            selectionHandleColor: Colors.white,
            cursorColor: Colors.white,
          ),
        ),
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.calcScreenRoute,
      ),
    );
  }
}
