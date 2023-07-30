import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/editUserView/controller/edit_user_controller.dart';
import 'package:tahap1_crud/module/home/controller/home_controller.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';
import '../../../widgets/underline_text_field_widget.dart';

class EditUserView extends StatelessWidget {
  const EditUserView({super.key, required this.user});

  final user;

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    EditUserController controller = Get.put(EditUserController(user: user));
    return AddOrEditPageTemplate(
      titlePage: "UPDATE USER",
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.profilePicture == ""
                ? "Previous Profile Picture : https://icon-library.com/images/default-profile-icon/default-profile-icon-6.jpg"
                : "Previous Profile Picture : ${user.profilePicture}",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 5.0,
          ),
          UnderlineTextFieldWidget(
              controller: controller.profilePictureC,
              hintText: "Profile Picture",
              prefixIcon: Icons.link),
          const Text(
            "Profile Picture must be URL Link with format .png, .jpg, .jpeg",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            "Previous Username : ${user.username}",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 5.0,
          ),
          UnderlineTextFieldWidget(
              controller: controller.username,
              hintText: "Username",
              prefixIcon: Icons.person),
          Text(
            "Previous Email : ${user.email}",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 5.0,
          ),
          UnderlineTextFieldWidget(
              controller: controller.email,
              hintText: "Email",
              prefixIcon: Icons.email),
          Text(
            "Previous Password : ${user.password}",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 5.0,
          ),
          UnderlineTextFieldWidget(
              controller: controller.password,
              hintText: "Password",
              prefixIcon: Icons.key),
          const SizedBox(
            height: 10.0,
          ),
        ],
      ),
      buttonText:
          homeController.isLoading.value == true ? "Loading..." : "Update User",
      onTapButton: () => controller.checkTextField(context),
    );
  }
}
