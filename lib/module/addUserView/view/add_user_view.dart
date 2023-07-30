import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/addUserView/controller/add_user_controller.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';
import '../../../widgets/underline_text_field_widget.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    AddUserController controller = Get.put(AddUserController());
    return AddOrEditPageTemplate(
      titlePage: "ADD USER",
      profilePictureIcon: Icons.add,
      onPressedProfilePictureIcon: () {},
      form: Column(
        children: [
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
      buttonText: "Add User",
      onTapButton: () => controller.checkTextField(context),
    );
  }
}
