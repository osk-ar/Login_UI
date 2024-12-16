import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.padding});
  final String title;
  final Color backgroundColor;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: padding),
      ),
      onPressed: () {
        print("Button  Pressed");
      },
      child: Text(title),
    );
  }
}
