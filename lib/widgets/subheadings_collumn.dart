import 'package:flutter/material.dart';

class SubheadingsColumn extends StatelessWidget {
  const SubheadingsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Tip Amount", style: TextStyle(color: Colors.white, fontFamily: "SpaceMono", fontSize: 16)),
        Text("/ person", style: TextStyle(color: Colors.white54, fontFamily: "SpaceMono", fontSize: 13)),
        SizedBox(height: 30),
        Text("Total", style: TextStyle(color: Colors.white, fontFamily: "SpaceMono", fontSize: 16)),
        Text("/ person", style: TextStyle(color: Colors.white54, fontFamily: "SpaceMono", fontSize: 13)),
      ],
    );
  }
}
