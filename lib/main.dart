import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/home/view/home_view.dart';
import 'package:tahap1_crud/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const HomeView(),
      getPages: AppPage.pages,
    );
  }
}
