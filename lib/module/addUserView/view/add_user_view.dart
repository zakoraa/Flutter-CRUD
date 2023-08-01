import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/addUserView/controller/add_user_controller.dart';
import 'package:tahap1_crud/shared/pageTemplate/add_edit_user.dart';
import '../../../shared/widgets/underline_text_field_widget.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    AddUserController controller = Get.put(AddUserController());

    return Obx(()=>AddOrEditPageTemplate(
      titlePage: "ADD USER",
      form: Column(
        children: [
          UnderlineTextFieldWidget(
              controller: controller.profilePictureC,
              hintText: "Profile Picture",
              prefixIcon: Icons.link),
          const Text(
            "Profile Picture must be URL Link with format .png, .jpg, .jpeg OR from https://encrypted-tbn0.gstatic.com",
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          UnderlineTextFieldWidget(
              controller: controller.username,
              hintText: "Username",
              prefixIcon: Icons.person),
          UnderlineTextFieldWidget(
              controller: controller.email,
              hintText: "Email",
              prefixIcon: Icons.email),
          UnderlineTextFieldWidget(
              controller: controller.password,
              hintText: "Password",
              prefixIcon: Icons.key),
          UnderlineTextFieldWidget(
              controller: controller.confirmPassword,
              hintText: "Confirm Password",
              prefixIcon: Icons.key),
        ],
      ),
      buttonText:
          controller.isLoading.value ? "Loading..." : "Add User",
      onTapButton: () => controller.checkTextField(context),
    ));
  }
}
