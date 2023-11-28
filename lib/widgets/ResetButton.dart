import 'package:flutter/material.dart';

class ResetButton extends StatefulWidget {
  const ResetButton({Key? key}) : super(key: key);

  @override
  State<ResetButton> createState() => _ResetButtonState();
}

class _ResetButtonState extends State<ResetButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
            color: const Color(0xff26C2AD),
            borderRadius: BorderRadius.circular(8)
        ),
        child: const Align(
          alignment: Alignment.center,
          child: Text("RESET", style: TextStyle(color: Color(0xff004C4D), fontFamily: "SpaceMono", fontSize: 20, fontWeight: FontWeight.bold),),
        )
    );
  }
}
