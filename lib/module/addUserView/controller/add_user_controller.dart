// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/home/controller/home_controller.dart';
import '../../../service/user_service.dart';
import '../../../shared/utils/scaffold_messenger_utils.dart';

class AddUserController extends GetxController {
  TextEditingController? profilePictureC = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  UserService userService = Get.put(UserService());
  HomeController homeController = Get.put(HomeController());

  RxBool isLoading = false.obs;

  void addUser(BuildContext context, {profilePicture = ""}) {
    isLoading.value = true;
    userService
        .addUser(username.text, email.text, password.text, profilePicture)
        .then((value) {
      isLoading.value = false;
      ScaffoldMessengerUtils.showFloatingSnackBar(
          context, "Add User Success", const Color.fromARGB(255, 80, 165, 255));
      profilePictureC!.text = "";
      username.text = "";
      email.text = "";
      password.text = "";
      confirmPassword.text = "";
      homeController.onRefresh();
    });
  }

  void checkTextField(BuildContext context) {
    if (username.text.isEmpty ||
        email.text.isEmpty ||
        password.text.isEmpty ||
        confirmPassword.text.isEmpty) {
      ScaffoldMessengerUtils.showFloatingSnackBar(
          context,
          "There is still something that hasn't been filled. Please fill it!",
          const Color.fromARGB(255, 255, 92, 80));
    } else {
      if (password.text == confirmPassword.text) {
        if (profilePictureC!.text.isNotEmpty &&
            profilePictureC!.text.length < 10) {
          ScaffoldMessengerUtils.showFloatingSnackBar(
              context,
              "Profile picture must be more than 10 characters!",
              const Color.fromARGB(255, 255, 92, 80));
        } else if (profilePictureC!.text == "" ||
            profilePictureC!.text.substring(profilePictureC!.text.length - 4,
                    profilePictureC!.text.length) ==
                ".png" ||
            profilePictureC!.text.substring(profilePictureC!.text.length - 4,
                    profilePictureC!.text.length) ==
                ".jpg" ||
            profilePictureC!.text.substring(profilePictureC!.text.length - 5,
                    profilePictureC!.text.length) ==
                ".jpeg" ||
            profilePictureC!.text.substring(profilePictureC!.text.length - 4,
                    profilePictureC!.text.length) ==
                "=CAU" ||
            profilePictureC!.text.contains(".jpg") ||
            profilePictureC!.text.contains(".jpeg") ||
            profilePictureC!.text.contains(".png") ||
            profilePictureC!.text.contains("image?") ||
            profilePictureC!.text.contains("images?")) {
          addUser(context, profilePicture: profilePictureC!.text);
        } else {
          addUser(context);
        }
      } else {
        ScaffoldMessengerUtils.showFloatingSnackBar(
            context,
            "Password and Confirm Password must be the same!",
            const Color.fromARGB(255, 255, 92, 80));
      }
    }
  }
}
