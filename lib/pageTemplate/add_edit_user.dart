// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/widgets/button.dart';

class AddOrEditPageTemplate extends StatelessWidget {
  const AddOrEditPageTemplate(
      {super.key,
      required this.titlePage,
      required this.profilePictureIcon,
      this.onPressedProfilePictureIcon,
      required this.form,
      this.buttonText,
      this.onTapButton});

  final String? buttonText, titlePage;
  final form;
  final profilePictureIcon;
  final onPressedProfilePictureIcon;
  final onTapButton;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            height: Get.size.height * 0.9,
            width: Get.size.width * 0.9,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                Container(
                  height: Get.size.height * 0.9,
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
                            Text(
                              titlePage!,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
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
                            const EdgeInsets.only(top: 30, right: 20, left: 20),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        Get.size.height * 0.2),
                                    child: Image.network(
                                      'https://icon-library.com/images/default-profile-icon/default-profile-icon-6.jpg',
                                      height: Get.size.height * 0.2,
                                      width: Get.size.height * 0.2,
                                    )),
                                Positioned(
                                  bottom: 5,
                                  right: 10,
                                  child: Container(
                                      height: Get.size.height * 0.055,
                                      width: Get.size.height * 0.055,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 80, 165, 255),
                                          borderRadius: BorderRadius.circular(
                                              Get.size.height * 0.055)),
                                      child: Center(
                                        child: IconButton(
                                            onPressed:
                                                onPressedProfilePictureIcon,
                                            icon: Icon(
                                              profilePictureIcon,
                                              color: Colors.white,
                                            )),
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 60.0,
                            ),
                            form,
                            const SizedBox(
                              height: 10.0,
                            ),
                            ButtonWidget(
                                text: buttonText!,
                                height: Get.size.height * 0.065,
                                width: Get.size.width * 0.7,
                                onTap: onTapButton,
                                borderRadius: 10,
                                fontSize: Get.size.height * 0.02,
                                bgColor:
                                    const Color.fromARGB(255, 80, 165, 255))
                          ],
                        ),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
