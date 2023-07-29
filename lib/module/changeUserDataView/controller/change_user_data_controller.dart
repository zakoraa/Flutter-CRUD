import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/scaffold_messenger_utils.dart';

class ChangeUserDataController extends GetxController {
  TextEditingController textController = TextEditingController();

  void checkTextField(BuildContext context, String data) {
    if (textController.text.isEmpty) {
      ScaffoldMessengerUtils.showFloatingSnackBar(
          context, "${data} user is empty. Please fill it in!");
    }
  }
}
