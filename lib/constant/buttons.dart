import 'package:flutter/material.dart';

class customButton {
  late final String text;
  late final VoidCallback onPressed;
  late final Color? color;
  late final Color? textColor;

  customButton(
      {required this.text,
      required this.onPressed,
      this.color,
      this.textColor});
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headlineMedium,
        ));
  }
}
