import 'package:ai_image_generator/Utils/app_color.dart';
import 'package:ai_image_generator/controllers/home_screen_controller.dart';
import 'package:ai_image_generator/controllers/sign_in_controller.dart';
import 'package:ai_image_generator/controllers/sign_up_controller.dart';
import 'package:ai_image_generator/views/widgets/textfield_suffix.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';


class InputField extends StatelessWidget {
  InputField(
      {super.key,
      required this.onTap,
      required this.focus,
      required this.hint,
      required this.controller,
      this.correct,
      required this.onChange,
      this.hideText,
      this.showPass});

  final bool focus;
  final String hint;
  final TextEditingController controller;
  final VoidCallback onTap;
  final VoidCallback onChange;
  final VoidCallback? showPass;
  final bool? hideText;
  final bool? correct;
  final _signUpController = Get.put(SignUpController());
  final _signInController = Get.put(SignInController());
  final _homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: focus
            ? const LinearGradient(colors: [
                Colors.purpleAccent,
                Colors.pink,
              ])
            : null,
      ),
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        onTapOutside: (event) {
          _signUpController.onTapOutside(context);
          _signInController.onTapOutside(context);
          _homeScreenController.onTapOutside(context);
        },
        onChanged: (value) {
          onChange();
        },
        obscureText: hideText ?? false,
        style:
            const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        decoration: InputDecoration(
          filled: true,
          suffixIcon: hideText == null
              ? correct == true
                  ? const TextFieldSufix(
                      icon: Icons.done,
                    )
                  : null
              : _signUpController.password.value.text.toString().isNotEmpty
                  ? GestureDetector(
                      onTap: showPass,
                      child: hideText!
                          ? const TextFieldSufix(
                              icon: FontAwesomeIcons.eye,
                              size: 13,
                            )
                          : const TextFieldSufix(
                              icon: FontAwesomeIcons.eyeLowVision,
                              size: 13,
                            ),
                    )
                  : const SizedBox(),
          fillColor: primaryColor,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none),
          hoverColor: Colors.pinkAccent,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          hintText: hint,
          hintStyle: const TextStyle(
              color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
        ),
      ),
    );
  }
}
