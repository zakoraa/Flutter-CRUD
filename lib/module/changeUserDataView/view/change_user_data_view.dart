import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tahap1_crud/module/changeUserDataView/controller/change_user_data_controller.dart';
import 'package:tahap1_crud/widgets/button.dart';
import 'package:tahap1_crud/widgets/outline_text_field_widget.dart';

class ChangeUserDataView extends StatelessWidget {
  const ChangeUserDataView({super.key, required this.data});

  final String data;

  @override
  Widget build(BuildContext context) {
    ChangeUserDataController controller = Get.put(ChangeUserDataController());
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: SizedBox(
      height: Get.size.height * 0.9,
      width: Get.size.width * 0.9,
      child: Column(
        children: [
          const SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                  onTap: () => Get.back(),
                  child: const Icon(Icons.arrow_back, size: 30)),
              Text(
                "Change $data user",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 30.0,
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          OutlineTextFieldWidget(
            controller: controller.textController,
            hintText: data,
          ),
          const SizedBox(
            height: 20.0,
          ),
          ButtonWidget(
            text: "Save",
            height: 50,
            width: Get.size.width,
            onTap: () {
              controller.checkTextField(context, data);
            },
            borderRadius: 10,
            bgColor: const Color.fromARGB(255, 80, 165, 255),
            fontSize: 18,
          )
        ],
      ),
    ))));
  }
}
