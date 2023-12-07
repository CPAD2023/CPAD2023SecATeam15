import 'package:ai_image_generator/controllers/sign_up_controller.dart';
import 'package:ai_image_generator/routes/routes.dart';
import 'package:ai_image_generator/views/screens/sign_up/components/signup_bar.dart';
import 'package:ai_image_generator/views/screens/sign_up/components/signup_input_form.dart';
import 'package:ai_image_generator/views/widgets/sign_up_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'button.dart';


class SignupBody extends StatelessWidget {
  SignupBody({super.key});

  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SignUpBar(),
            const SizedBox(
              height: 10,
            ),
            const SignUpOptions(),
            const SizedBox(
              height: 10,
            ),
            InputForm(),
            Obx(
              () => AccountButton(
                text: "Create Account",
                loading: controller.loading.value,
                onTap: () {
                  controller.createAccount();
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.signInScreen),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text: 'Login',
                        style: TextStyle(
                          color: Colors.white,
                        ))
                  ])),
                ))
          ],
        ),
      ),
    );
  }
}
