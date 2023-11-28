import 'package:flutter/material.dart';

class TipAmounts extends StatefulWidget {
  final String tipAmountPerPerson;
  final String totalPerPerson;
  const TipAmounts({Key? key, required this.tipAmountPerPerson, required this.totalPerPerson}) : super(key: key);

  @override
  State<TipAmounts> createState() => _TipAmountsState();
}

class _TipAmountsState extends State<TipAmounts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("\$${widget.tipAmountPerPerson}", style: TextStyle(color: Color(0xff25C4AD), fontFamily: "SpaceMono", fontSize: 30), textAlign: TextAlign.end),
        SizedBox(height: 30),
        Text("\$${widget.totalPerPerson}", style: TextStyle(color: Color(0xff25C4AD), fontFamily: "SpaceMono", fontSize: 30), textAlign: TextAlign.end),
      ],
    );
  }
}
