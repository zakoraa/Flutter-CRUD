import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'package:tahap1_crud/module/addUserView/controller/add_user_controller.dart';
import 'package:tahap1_crud/module/home/widget/list_tile_widget.dart';

import '../../addUserView/view/add_user_view.dart';
import '../controller/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController controller = Get.put(HomeController()); 
    return Scaffold(
      body: Obx(
        () => LiquidPullToRefresh(
          onRefresh: controller.onRefresh,
          backgroundColor: Colors.white,
          showChildOpacityTransition: false,
          springAnimationDurationInMilliseconds: 500,
          color: Colors.grey,
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Center(
              child: SizedBox(
                width: Get.size.width * 0.9,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 15.0,
                            ),
                            const Text(
                              "Simple CRUD App",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const AddUserView(),
                                  transition: Transition.rightToLeft),
                              child: const Icon(
                                (Icons.person_add_alt_1),
                                size: 30,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 50.0,
                        ),
                        controller.userDataList.isEmpty &&
                                controller.isLoading.value == false
                            ? const Text(
                                "User is empty",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                ),
                              )
                            : const SizedBox.shrink(),
                        controller.isLoading.value
                            ? const Text(
                                "Loading...",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                ),
                              )
                            : controller.userDataList.isEmpty
                                ? const SizedBox.shrink()
                                : Column(
                                    children: controller.userDataList
                                        .map((user) =>
                                            ListTileWidget(user: user))
                                        .toList(),
                                  )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
