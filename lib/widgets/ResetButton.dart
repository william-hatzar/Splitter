import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  final VoidCallback onReset;

  const ResetButton({Key? key, required this.onReset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onReset,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: const Color(0xff26C2AD),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Text(
            "RESET",
            style: TextStyle(
              color: Color(0xff004C4D),
              fontFamily: "SpaceMono",
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
