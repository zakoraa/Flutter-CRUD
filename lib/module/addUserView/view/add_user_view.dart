import 'package:flutter/material.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';
import '../../../widgets/underline_text_field_widget.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return AddOrEditPageTemplate(
        titlePage: "ADD USER",
        profilePictureIcon: Icons.add,
        form: Column(
          children: const [
            UnderlineTextFieldWidget(hintText: "Username", prefixIcon: Icons.person),
            UnderlineTextFieldWidget(hintText: "Email", prefixIcon: Icons.email),
            UnderlineTextFieldWidget(hintText: "Password", prefixIcon: Icons.key),
            UnderlineTextFieldWidget(
                hintText: "Confirm Password", prefixIcon: Icons.key),
          ],
        ),
        buttonText: "Add User");
  }
}
