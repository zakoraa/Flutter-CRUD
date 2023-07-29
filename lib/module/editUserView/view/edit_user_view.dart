import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/changeUserDataView/view/change_user_data_view.dart';
import 'package:tahap1_crud/module/editUserView/widgets/form_widget.dart';
import 'package:tahap1_crud/pageTemplate/add_edit_user.dart';

class EditUserView extends StatelessWidget {
  const EditUserView({super.key, required this.user});

  final user;

  @override
  Widget build(BuildContext context) {
    final username = user.username;
    final userEmail = user.email;
    final userPassword = user.password;
    return AddOrEditPageTemplate(
      titlePage: "UPDATE USER",
      profilePictureIcon: Icons.edit,
      form: Column(
        children: [
          FormWidget(
            leading: "Username",
            title: username,
            trailing: Icons.keyboard_arrow_right,
            onTap: () => Get.to(
                () => ChangeUserDataView(user: username, data: "Username"),
                transition: Transition.rightToLeft),
          ),
          FormWidget(
            leading: "Email",
            title: userEmail,
            trailing: Icons.keyboard_arrow_right,
            onTap: () => Get.to(
                () => ChangeUserDataView(user: userEmail, data: "Email"),
                transition: Transition.rightToLeft),
          ),
          FormWidget(
            leading: "Password",
            title: userPassword,
            trailing: Icons.keyboard_arrow_right,
            onTap: () => Get.to(
                () => ChangeUserDataView(user: userPassword, data: "Password"),
                transition: Transition.rightToLeft),
          ),
        ],
      ),
    );
  }
}
