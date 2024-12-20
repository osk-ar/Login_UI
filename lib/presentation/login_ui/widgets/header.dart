import 'package:bmi_calc/core/helpers/text_style_manager.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            Text(
              "Login",
              style: TextStyleManager.getMediumStyle(
                  color: Colors.white, fontSize: 48),
            ),
            Text(
              "Welcome Back",
              style: TextStyleManager.getLightStyle(
                  color: Colors.white, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
