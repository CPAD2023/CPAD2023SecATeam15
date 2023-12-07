import 'package:ai_image_generator/controllers/home_screen_controller.dart';
import 'package:ai_image_generator/views/widgets/text_filled.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromptForm extends StatelessWidget {
   PromptForm({super.key});
  final controller=Get.put(HomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40,
        ),
       
        const SizedBox(
          height: 10,
        ),
        Obx(() => InputField(
        
          onTap: () => controller.onFocusPrompt(),
          focus: controller.promptFocused.value,
          hint: "Type something here ✨ ...",
          controller: controller.prompt.value,
          onChange:  (){},
        )),
        const SizedBox(
          height: 20,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
