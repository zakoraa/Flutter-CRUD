import 'package:flutter/material.dart';

class ButtonUtils extends StatelessWidget {
  const ButtonUtils(
      {required this.text,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.bgColor});
  final String text;
  final double height, width, borderRadius;
  final dynamic bgColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.0,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        // splashColor: Colors.red,
        onTap: () {},
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(borderRadius)),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
