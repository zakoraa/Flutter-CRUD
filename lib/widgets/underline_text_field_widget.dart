// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnderlineTextFieldWidget extends StatelessWidget {
  const UnderlineTextFieldWidget(
      {super.key,
      required this.hintText,
      required this.prefixIcon,
      this.controller});

  final String hintText;
  final dynamic prefixIcon;
  final controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 20),
      child: TextField(
        controller: controller,
        cursorColor: Colors.white,
        decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.white,
              size: Get.size.height * 0.03,
            ),
            hintText: hintText,
            hintStyle: TextStyle(
                color: Colors.white, fontSize: Get.size.height * 0.02),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
              color: Colors.white,
            ))),
      ),
    );
  }
}
