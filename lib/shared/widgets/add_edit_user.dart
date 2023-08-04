// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/shared/widgets/button.dart';

class AddOrEditPageTemplate extends StatelessWidget {
  const AddOrEditPageTemplate(
      {super.key,
      required this.titlePage,
      required this.form,
      this.buttonText,
      this.onTapButton});

  final String? buttonText, titlePage;
  final form;
  final onTapButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 30),
        child: SafeArea(
          child: Center(
            child: SizedBox(
              width: Get.size.width * 0.9,
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                width: Get.size.width,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(138, 110, 110, 110),
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: Get.size.width * 0.08,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () => Get.back(),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 35,
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: Get.size.width * 0.10,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, right: 20, left: 20),
                      child: Column(
                        children: [
                          Text(
                            titlePage!,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 50.0,
                          ),
                          form,
                          ButtonWidget(
                              text: buttonText!,
                              height: Get.size.height * 0.065,
                              width: Get.size.width * 0.7,
                              onTap: onTapButton,
                              borderRadius: 10,
                              fontSize: Get.size.height * 0.02,
                              bgColor: const Color.fromARGB(255, 80, 165, 255)),
                          const SizedBox(
                            height: 40.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
