import 'package:flutter/material.dart';

class InputUpperContainer extends StatelessWidget {
  const InputUpperContainer(
      {super.key,
      required this.num1Controller,
      required this.num2Controller,
      required this.validator,
      required this.formKey,
      required this.num1Node,
      required this.num2Node,
      required this.num1OnFieldSubmitted});
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final FocusNode num1Node;
  final FocusNode num2Node;
  final String? Function(String?) validator;
  final void Function(String) num1OnFieldSubmitted;
  final GlobalKey formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF007c6b),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(48),
            bottomRight: Radius.circular(48),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomInputField(
              validator: validator,
              onFieldSubmitted: num1OnFieldSubmitted,
              controller: num1Controller,
              node: num1Node,
              label: "Num1",
            ),
            const SizedBox(height: 20),
            CustomInputField(
              validator: validator,
              controller: num2Controller,
              node: num2Node,
              label: "Num2",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomInputField extends StatelessWidget {
  const CustomInputField(
      {super.key,
      required this.controller,
      required this.label,
      required this.validator,
      required this.node,
      this.onFieldSubmitted});
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?) validator;
  final TextEditingController controller;
  final FocusNode node;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      focusNode: node,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey[900]),
        fillColor: Colors.transparent,
        enabledBorder: getEnabledBorder(),
        focusedBorder: getFocusedBorder(),
        errorBorder: getErrorBorder(),
        focusedErrorBorder: getFocusErrorBorder(),
      ),
      onFieldSubmitted: onFieldSubmitted,
    );
  }
}

InputBorder? getEnabledBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.grey, width: 1),
  );
}

InputBorder? getFocusedBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: BorderSide(color: Colors.grey[900]!, width: 2),
  );
}

InputBorder? getErrorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.redAccent, width: 1),
  );
}

InputBorder? getFocusErrorBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(12),
    borderSide: const BorderSide(color: Colors.redAccent, width: 2),
  );
}
