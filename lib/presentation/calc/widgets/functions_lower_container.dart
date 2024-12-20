import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FunctionsLowerContainer extends StatelessWidget {
  const FunctionsLowerContainer(
      {super.key,
      this.addingFunc,
      this.subtractingFunc,
      this.multiplingFunc,
      this.divisionFunc});
  final void Function()? addingFunc;
  final void Function()? subtractingFunc;
  final void Function()? multiplingFunc;
  final void Function()? divisionFunc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF007c6b),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48),
          topRight: Radius.circular(48),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: addingFunc,
            style: ElevatedButton.styleFrom(
              elevation: 6,
              fixedSize: const Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Icon(
              CupertinoIcons.add,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: subtractingFunc,
            style: ElevatedButton.styleFrom(
              elevation: 6,
              fixedSize: const Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Icon(
              CupertinoIcons.minus,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: multiplingFunc,
            style: ElevatedButton.styleFrom(
              elevation: 6,
              fixedSize: const Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Icon(
              CupertinoIcons.multiply,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            onPressed: divisionFunc,
            style: ElevatedButton.styleFrom(
              elevation: 6,
              fixedSize: const Size(60, 60),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Icon(
              CupertinoIcons.divide,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
