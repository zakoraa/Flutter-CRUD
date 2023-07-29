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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                  onTap: () => Get.back(),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    size: 40,
                                  )),
                            ),
                            Text(
                              titlePage!,
                              style: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 60.0,
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
                                    borderRadius: BorderRadius.circular(200),
                                    child: Image.network(
                                      'https://icon-library.com/images/default-profile-icon/default-profile-icon-6.jpg',
                                      height: 200,
                                      width: 200,
                                    )),
                                Positioned(
                                  bottom: 5,
                                  right: 10,
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 80, 165, 255),
                                          borderRadius:
                                              BorderRadius.circular(40)),
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
                              height: 70.0,
                            ),
                            form,
                            const SizedBox(
                              height: 20.0,
                            ),
                            buttonText == null
                                ? const SizedBox.shrink()
                                : ButtonWidget(
                                    text: buttonText!,
                                    height: 50,
                                    width: Get.size.width * 0.7,
                                    onTap: onTapButton,
                                    borderRadius: 10,
                                    fontSize: 18,
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
