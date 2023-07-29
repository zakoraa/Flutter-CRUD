import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';
import 'package:tahap1_crud/widgets/button.dart';

import '../../../widgets/text_field_widget.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return AddOrEditPageTemplate(
        profilePictureIcon: Icons.add,
        textFieldForm: Column(
          children: const [
            TextFieldWidget(hintText: "Username", prefixIcon: Icons.person),
            TextFieldWidget(hintText: "Email", prefixIcon: Icons.email),
            TextFieldWidget(hintText: "Password", prefixIcon: Icons.key),
            TextFieldWidget(
                hintText: "Confirm Password", prefixIcon: Icons.key),
          ],
        ),
        buttonText: "Add User");
  }
}
