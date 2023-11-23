import 'package:flutter/material.dart';
import 'package:tip_calc/tip_home_screen.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TipHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
