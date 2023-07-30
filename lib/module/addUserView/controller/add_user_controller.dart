import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/home/controller/home_controller.dart';

import '../../../service/user_service.dart';
import '../../../utils/scaffold_messenger_utils.dart';

class AddUserController extends GetxController {
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  UserService userService = Get.put(UserService());
  HomeController homeController = Get.put(HomeController());

  RxBool isLoading = true.obs;

  void addUser(BuildContext context) {
    isLoading.value = false;
    userService
        .addUser(username.text, email.text, password.text, null)
        .then((value) {
      ScaffoldMessengerUtils.showFloatingSnackBar(
          context, "Add User Success", const Color.fromARGB(255, 80, 165, 255));
      username.text = "";
      email.text = "";
      password.text = "";
      confirmPassword.text = "";
      homeController.onRefresh();
      isLoading.value = true;
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
        addUser(context);
      } else {
        ScaffoldMessengerUtils.showFloatingSnackBar(
            context,
            "Password and Confirm Password must be the same!",
            const Color.fromARGB(255, 255, 92, 80));
      }
    }
  }
}
