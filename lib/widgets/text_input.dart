import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInput extends StatefulWidget {
  final String svgImage;
  final TextEditingController textEditingController;
  final Function(String) onSubmitted;

  const TextInput({
    Key? key,
    required this.svgImage,
    required this.textEditingController,
    required this.onSubmitted,
  }) : super(key: key);

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xffF3F8FB),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            SizedBox(height: 20, width: 20, child: SvgPicture.asset("images/${widget.svgImage}.svg")),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: widget.textEditingController,
                style: const TextStyle(fontFamily: "SpaceMono", fontSize: 20),
                textAlign: TextAlign.right,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: -18),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                onSubmitted: widget.onSubmitted,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
