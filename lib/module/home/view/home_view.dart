import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/addUserView/view/add_user_view.dart';
import 'package:tahap1_crud/module/home/widgets/list_tile_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: SizedBox(
          height: Get.size.height,
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
                      IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () => Get.to(() => const AddUserView(),
                            transition: Transition.rightToLeft),
                        icon: const Icon(Icons.person_add_alt_1),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  Expanded(
                    child: Column(
                      children: const [ListTileWiget()],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
