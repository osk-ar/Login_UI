import 'package:bmi_calc/presentation/common/custom_button.dart';
import 'package:bmi_calc/presentation/common/custom_text_field.dart';
import 'package:bmi_calc/presentation/common/header.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.orange[900],
      body: Column(
        children: [
          const SizedBox(height: 110),
          const Header(),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(64),
                  topRight: Radius.circular(64),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  children: [
                    const SizedBox(height: 120),
                    Material(
                      elevation: 12,
                      shadowColor: Colors.orange[900],
                      borderRadius: BorderRadius.circular(16),
                      child: const Column(
                        children: [
                          CustomTextField(
                            hintText: "Email or Phone number",
                            topLeftRadius: 16,
                            topRightRadius: 16,
                          ),
                          CustomTextField(
                            hintText: "Password",
                            bottomLeftRadius: 16,
                            bottomRightRadius: 16,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Text("Forgot Password?"),
                    const SizedBox(height: 40),
                    CustomButton(
                      backgroundColor: Colors.orange[900]!,
                      title: "Login",
                      padding: 48,
                    ),
                    const SizedBox(height: 40),
                    const Text("Continue with social media"),
                    const SizedBox(height: 40),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomButton(
                          backgroundColor: Colors.blue,
                          title: "Facebook",
                          padding: 36,
                        ),
                        CustomButton(
                          backgroundColor: Colors.black,
                          title: "Github",
                          padding: 36,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
