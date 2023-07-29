import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/model/user_model.dart';
import 'package:tahap1_crud/service/user_service.dart';
import 'package:tahap1_crud/utils/scaffold_messenger_utils.dart';

class HomeController extends GetxController {
  final UserService userService = UserService();

  @override
  void onInit() {
    super.onInit();
    getUserData();
  }

  RxList<User> userDataList = <User>[].obs;
  RxBool isLoading = true.obs;

  void getUserData() async {
    final userData = await userService.getUsers();
    if (userData.isNotEmpty) {
      userDataList.value = userData;
    }
    isLoading.value = false;
  }

  void deleteUserSuccess(BuildContext context) async {
    ScaffoldMessengerUtils.showFloatingSnackBar(
        context, "Delete User Success", const Color.fromARGB(255, 68, 212, 24));
  }
}