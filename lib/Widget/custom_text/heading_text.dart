import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  final String labelText;
  const HeadingText({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 60,
      ),
    );
  }
}
