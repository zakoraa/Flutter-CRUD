// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/editUserView/view/edit_user_view.dart';
import 'package:tahap1_crud/module/home/controller/home_controller.dart';
import '../../../widgets/button.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.user});

  final user;

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.find<HomeController>();
    return Container(
        width: Get.size.width,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: const Color.fromARGB(138, 110, 110, 110),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network(
                      user.profilePicture == ""
                          ? 'https://icon-library.com/images/default-profile-icon/default-profile-icon-6.jpg'
                          : user.profilePicture,
                      height: 60,
                      width: 60,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: Get.size.width * 0.3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.username,
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        user.email,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                ButtonWidget(
                    onTap: () {
                      Get.to(() => EditUserView(user: user),
                          transition: Transition.rightToLeft);
                    },
                    text: "EDIT",
                    fontSize: 12,
                    height: 40,
                    width: Get.size.width * 0.25,
                    borderRadius: 5,
                    bgColor: const Color.fromARGB(255, 80, 165, 255)),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(
                    onTap: () =>
                        controller.confirmDeleteUserData(context, user),
                    text: "DELETE",
                    fontSize: 12,
                    height: 40,
                    width: Get.size.width * 0.25,
                    borderRadius: 5,
                    bgColor: const Color.fromARGB(255, 255, 92, 80)),
              ],
            )
          ],
        ));
  }
}
