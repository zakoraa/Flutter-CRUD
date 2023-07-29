import 'package:get/get.dart';
import 'package:tahap1_crud/model/user_model.dart';
import 'package:tahap1_crud/service/user_service.dart';

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
}
