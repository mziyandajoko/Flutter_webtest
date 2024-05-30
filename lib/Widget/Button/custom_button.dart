import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final IconData icon;

  const CustomButton(
      {super.key,
      required this.label,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blueGrey, // Text color
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
      ),
      label: Text(label),
      icon: Icon(
        icon,
      ),
    );
  }
}
