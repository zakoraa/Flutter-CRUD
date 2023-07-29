// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormWidget extends StatelessWidget {
  const FormWidget(
      {super.key,
      required this.leading,
      required this.title,
      required this.trailing,
      required this.onTap});

  final String leading, title;
  final dynamic trailing;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 50,
      width: Get.size.width,
      color: const Color.fromARGB(139, 158, 158, 158),
      padding: const EdgeInsets.all(10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          height: Get.size.height,
          width: 100,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              leading,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 140,
          child: Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Icon(
            trailing,
            size: 30,
          ),
        )
      ]),
    );
  }
}
