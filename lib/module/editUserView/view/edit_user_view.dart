import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/editUserView/controller/edit_user_controller.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';
import '../../../widgets/underline_text_field_widget.dart';

class EditUserView extends StatelessWidget {
  const EditUserView({super.key, required this.user});

  final user;

  @override
  Widget build(BuildContext context) {
    EditUserController controller = Get.put(EditUserController(user: user));
    return AddOrEditPageTemplate(
      titlePage: "UPDATE USER",
      profilePictureIcon: Icons.edit,
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UnderlineTextFieldWidget(
              controller: controller.username,
              hintText: "Username",
              prefixIcon: Icons.person),
          Text(
            "Previous Username : ${user.username}",
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
            "Previous Email : ${user.email}",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 5.0,
          ),
          UnderlineTextFieldWidget(
              controller: controller.password,
              hintText: "Password",
              prefixIcon: Icons.key),
          Text(
            "Previous Password : ${user.password}",
            style: const TextStyle(color: Colors.grey, fontSize: 14),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
      buttonText: "Update User",
      onTapButton: () => controller.checkTextField(context),
    );
  }
}
