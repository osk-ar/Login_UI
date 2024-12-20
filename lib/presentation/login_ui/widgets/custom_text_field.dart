import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.topLeftRadius = 0,
    this.topRightRadius = 0,
    this.bottomLeftRadius = 0,
    this.bottomRightRadius = 0,
  });
  final String hintText;
  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
            bottomRight: Radius.circular(bottomRightRadius),
          ),
        ),
      ),
    );
  }
}
