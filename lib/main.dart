import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/home/view/home_view.dart';
import 'package:tahap1_crud/utils/scroll_behavior.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: ScrollBehaviorUtils(),
          child: child!,
        );
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          textTheme: const TextTheme(
        bodyText2: TextStyle(
          fontSize: 12,
          color: Colors.white,
        ),
      )),
      home: const HomeView(),
    );
  }
}
