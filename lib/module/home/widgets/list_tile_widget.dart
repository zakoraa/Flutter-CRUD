import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/editUserView/view/edit_user_view.dart';
import 'package:tahap1_crud/module/home/controller/home_controller.dart';

import '../../../service/user_service.dart';
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
                    borderRadius: BorderRadius.circular(70),
                    child: Image.network(
                      user.profilePicture == ""
                          ? 'https://icon-library.com/images/default-profile-icon/default-profile-icon-6.jpg'
                          : user.profilePicture,
                      height: 70,
                      width: 70,
                    )),
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  width: 140,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.username,
                        style: const TextStyle(fontSize: 18),
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
                    height: 30,
                    width: 100,
                    borderRadius: 5,
                    bgColor: const Color.fromARGB(255, 80, 165, 255)),
                const SizedBox(
                  height: 10.0,
                ),
                ButtonWidget(
                    onTap: () {
                      UserService().deleteUser(user.id);
                      controller.deleteUserSuccess(context);
                    },
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
