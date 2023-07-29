// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {super.key, required this.text,
      required this.height,
      required this.width,
      required this.onTap,
      required this.borderRadius,
      this.fontSize = 16,
      required this.bgColor});
  final String text;
  final double height, width, borderRadius, fontSize;
  final dynamic bgColor;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        splashColor: Colors.red,
        onTap: onTap,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Center(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
            ),
          ),
        ),
      ),
    );
  }
}
