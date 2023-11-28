import 'package:flutter/material.dart';

class Subheading extends StatelessWidget {
  final String text;
  const Subheading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
          fontFamily: "SpaceMono",
          color: Colors.grey,
          fontSize: 15.0,
          fontWeight: FontWeight.w200),);
  }
}
