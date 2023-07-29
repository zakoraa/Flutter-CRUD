import 'package:flutter/material.dart';

class OutlineTextFieldWidget extends StatelessWidget {
  const OutlineTextFieldWidget(
      {super.key, required this.hintText, this.controller});

  final String hintText;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 20),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 18),
        cursorColor: Colors.grey,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            ))),
      ),
    );
  }
}
