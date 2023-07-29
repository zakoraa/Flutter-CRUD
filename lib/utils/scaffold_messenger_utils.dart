import 'package:flutter/material.dart';

class ScaffoldMessengerUtils {
  static void showFloatingSnackBar(context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
      duration: const Duration(seconds: 2),
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 92, 80),
    ));
  }
}
