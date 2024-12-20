import 'package:flutter/widgets.dart';

class ResultMiddleRow extends StatelessWidget {
  const ResultMiddleRow({super.key, required this.result});
  final String result;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 36,
          height: 24,
          color: const Color(0xFF007c6b),
        ),
        Text("Result = $result"),
        Container(
          width: 36,
          height: 24,
          color: const Color(0xFF007c6b),
        ),
      ],
    );
  }
}
