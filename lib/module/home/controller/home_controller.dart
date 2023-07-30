import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/model/user_model.dart';
import 'package:tahap1_crud/service/user_service.dart';
import 'package:tahap1_crud/utils/scaffold_messenger_utils.dart';

class HomeController extends GetxController {
  final UserService userService = Get.put(UserService());

  @override
  void onInit() {
    super.onInit();
    getUserData();
  }

  RxList<User> userDataList = <User>[].obs;
  RxBool isLoading = true.obs;

  Future<void> getUserData() async {
    final userData = await userService.getUsers();
    if (userData.isNotEmpty) {
      userDataList.value = userData;
    } else {
      userDataList.value = [];
    }
    isLoading.value = false;
  }

  void deleteUserSuccess(BuildContext context, user) {
    UserService().deleteUser(user.id).then((value) {
      ScaffoldMessengerUtils.showFloatingSnackBar(
          context,
          "Delete User Success",
          const Color.fromARGB(255, 80, 165, 255));
      onRefresh();
    });
  }

  Future<void> onRefresh() async {
    isLoading.value = true;
    await getUserData();
    isLoading.value = false;
  }
}
