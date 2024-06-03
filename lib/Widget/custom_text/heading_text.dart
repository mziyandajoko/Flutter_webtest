import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String labelText;
  final double fontSize;
  const HeadingText(
      {super.key, required this.labelText, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        height: 1.3,
      ),
    );
  }
}
