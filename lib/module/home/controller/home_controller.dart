import 'package:flutter/material.dart';
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

  void confirmDeleteUserData(BuildContext context, user) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text(
              "Are you sure to delete this user's data?",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            actions: [
              GestureDetector(
                onTap: () {
                  Get.back(canPop: false);
                  deleteUserSuccess(context, user);
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 92, 80),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      "Confirm",
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }

  void deleteUserSuccess(BuildContext context, user) {
    UserService().deleteUser(user.id).then((value) {
      ScaffoldMessengerUtils.showFloatingSnackBar(context,
          "Delete User Success", const Color.fromARGB(255, 80, 165, 255));
      onRefresh();
    });
  }

  Future<void> onRefresh() async {
    isLoading.value = true;
    await getUserData();
    isLoading.value = false;
  }
}
