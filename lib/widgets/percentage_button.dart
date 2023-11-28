import 'package:flutter/material.dart';

class PercentageButton extends StatefulWidget {
  final String text;
  const PercentageButton({Key? key, required this.text}) : super(key: key);

  @override
  State<PercentageButton> createState() => _PercentageButtonState();
}

class _PercentageButtonState extends State<PercentageButton> {
  final List<String> colour = ["not clicked", "clicked"];
  int currentIndex = 0;

  Color getBackgroundColor() {
    return currentIndex == 0 ? const Color(0xff00474B) : const Color(0xff9EE8DF);
  }

  void cycleItems() {
    setState(() {
      currentIndex = (currentIndex + 1) % colour.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        cycleItems(); // Corrected the invocation
        print(widget.text);
      },
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: getBackgroundColor(),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.text,
            style: const TextStyle(fontFamily: "SpaceMono", fontSize: 25, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
