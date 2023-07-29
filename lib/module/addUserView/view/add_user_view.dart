import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            height: Get.size.height * 0.9,
            width: Get.size.width * 0.9,
            decoration: BoxDecoration(
                color: const Color.fromARGB(139, 158, 158, 158),
                borderRadius: BorderRadius.circular(20)),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50.0,
                  ),
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
                                color: const Color.fromARGB(255, 80, 165, 255),
                                borderRadius: BorderRadius.circular(40)),
                            child: Center(
                              child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.edit)),
                            )),
                      )
                    ],
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
