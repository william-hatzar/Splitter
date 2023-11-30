import 'package:flutter/material.dart';

class TipAmounts extends StatefulWidget {
  final double tipAmountPerPerson;
  final double totalPerPerson;

  const TipAmounts({Key? key, required this.tipAmountPerPerson, required this.totalPerPerson}) : super(key: key);

  @override
  State<TipAmounts> createState() => _TipAmountsState();
}

class _TipAmountsState extends State<TipAmounts> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '\$${widget.tipAmountPerPerson.toStringAsFixed(2)}',
            style: const TextStyle(
              fontFamily: "SpaceMono",
              fontSize: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '\$${widget.totalPerPerson.toStringAsFixed(2)}',
            style: const TextStyle(
              fontFamily: "SpaceMono",
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
