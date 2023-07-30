// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../service/user_service.dart';
import '../../../utils/scaffold_messenger_utils.dart';
import '../../home/controller/home_controller.dart';

class EditUserController extends GetxController {
  EditUserController({required this.user});

  final user;

  @override
  void onInit() {
    super.onInit();
    username.text = user.username;
    email.text = user.email;
    password.text = user.password;
  }

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  UserService userService = Get.put(UserService());
  HomeController homeController = Get.put(HomeController());

  RxBool isLoading = true.obs;

  void updateUser(BuildContext context) {
    isLoading.value = false;
    userService
        .updateUser(user.id, username.text, email.text, password.text, null)
        .then((value) {
      ScaffoldMessengerUtils.showFloatingSnackBar(context,
          "Update User Success", const Color.fromARGB(255, 80, 165, 255));
      homeController.onRefresh();
      isLoading.value = true;
    });
  }

  void checkTextField(BuildContext context) {
    if (username.text.isEmpty || email.text.isEmpty || password.text.isEmpty) {
      ScaffoldMessengerUtils.showFloatingSnackBar(
          context,
          "There is still something that hasn't been filled. Please fill it!",
          const Color.fromARGB(255, 255, 92, 80));
    } else {
      updateUser(context);
    }
  }
}
