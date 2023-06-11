import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color backgroundColor;
  final Color fontColor;
  final String title;

  const Button(
      {super.key,
      required this.title,
      required this.backgroundColor,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        child: Text(
          title,
          style: TextStyle(color: fontColor),
        ),
      ),
    );
  }
}
