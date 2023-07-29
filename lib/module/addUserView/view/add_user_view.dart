import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/utils/button.dart';

import '../widgets/text_field_widget.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

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
                      color: const Color.fromARGB(139, 158, 158, 158),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () => Get.back(),
                              child: const Icon(
                                Icons.arrow_back,
                                size: 40,
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            // const SizedBox(
                            //   height: 10.0,
                            // ),
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
                                            onPressed: () {},
                                            icon: const Icon(Icons.add)),
                                      )),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 70.0,
                            ),
                            const TextFieldWidget(
                                hintText: "Username", prefixIcon: Icons.person),
                            const TextFieldWidget(
                                hintText: "Email", prefixIcon: Icons.email),
                            const TextFieldWidget(
                                hintText: "Password", prefixIcon: Icons.key),
                            const TextFieldWidget(
                                hintText: "Confirm Password",
                                prefixIcon: Icons.key),
                            const SizedBox(
                              height: 30.0,
                            ),
                            ButtonUtils(
                                text: "Add User",
                                height: 50,
                                width: Get.size.width * 0.9,
                                onTap: () {},
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
