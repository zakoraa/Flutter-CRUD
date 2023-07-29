import 'package:flutter/material.dart';
import 'package:tahap1_crud/module/editUserView/widgets/form_widget.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';

class EditUserView extends StatelessWidget {
  const EditUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return AddOrEditPageTemplate(
      titlePage: "UPDATE USER",
      profilePictureIcon: Icons.edit,
      form: Column(
        children: [
          FormWidget(
            leading: "Username",
            title: "NAME",
            trailing: Icons.keyboard_arrow_right,
            onTap: () {},
          ),
          FormWidget(
            leading: "Email",
            title: "name@gmail.com",
            trailing: Icons.keyboard_arrow_right,
            onTap: () {},
          ),
          FormWidget(
            leading: "Password",
            title: "*****",
            trailing: Icons.keyboard_arrow_right,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
