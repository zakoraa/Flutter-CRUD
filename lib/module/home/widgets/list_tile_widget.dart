import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/editUserView/view/edit_user_view.dart';

import '../../../widgets/button.dart';

class ListTileWiget extends StatelessWidget {
  const ListTileWiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.size.width,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color.fromARGB(138, 110, 110, 110),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "NAME",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      "name@gmail.com",
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                ButtonWidget(
                    onTap: () => Get.to(() => const EditUserView(),
                        transition: Transition.rightToLeft),
                    text: "EDIT",
                    height: 30,
                    width: 100,
                    borderRadius: 5,
                    bgColor: const Color.fromARGB(255, 80, 165, 255)),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(
                    onTap: () {},
                    text: "DELETE",
                    height: 30,
                    width: 100,
                    borderRadius: 5,
                    bgColor: const Color.fromARGB(255, 255, 92, 80)),
              ],
            )
          ],
        ));
  }
}
