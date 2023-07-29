import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/utils/button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: SizedBox(
          height: Get.size.height,
          width: Get.size.width * 0.9,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Column(
                children: [
                  const Text(
                    "Simple CRUD App",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                            width: Get.size.width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(139, 158, 158, 158),
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(70),
                                        child: Image.network(
                                          'https://icon-library.com/images/default-profile-icon/default-profile-icon-6.jpg',
                                          height: 70,
                                          width: 70,
                                        )),
                                    const SizedBox(
                                      width: 10.0,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "NAME",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        SizedBox(
                                          height: 2.0,
                                        ),
                                        Text(
                                          "18 years old",
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Column(
                                  children: const [
                                    ButtonUtils(
                                        text: "EDIT",
                                        height: 30,
                                        width: 100,
                                        borderRadius: 5,
                                        bgColor:
                                            Color.fromARGB(255, 80, 165, 255)),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    ButtonUtils(
                                        text: "DELETE",
                                        height: 30,
                                        width: 100,
                                        borderRadius: 5,
                                        bgColor:
                                            Color.fromARGB(255, 255, 92, 80)),
                                  ],
                                )
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
