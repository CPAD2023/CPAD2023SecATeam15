import 'package:ai_image_generator/controllers/sign_in_controller.dart';
import 'package:ai_image_generator/routes/routes.dart';
import 'package:ai_image_generator/views/screens/sign_in/components/signin_bar.dart';
import 'package:ai_image_generator/views/screens/sign_in/components/signin_input_form.dart';
import 'package:ai_image_generator/views/screens/sign_up/components/button.dart';
import 'package:ai_image_generator/views/widgets/sign_up_options.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInBody extends StatelessWidget {
  SignInBody({super.key});
  final controller = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const SignInBar(),
            const SignUpOptions(),
            const SizedBox(
              height: 20,
            ),
            SignInForm(),
            Obx(
              () => AccountButton(
                text: "Login Account",
                loading: controller.loading.value,
                onTap: () {
                  controller.loginAccount();
                },
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () => Get.toNamed(Routes.signUpScreen),
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          color: Colors.grey,
                        )),
                    TextSpan(
                        text: 'Sign up',
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
