import 'package:ai_image_generator/Utils/app_color.dart';
import 'package:ai_image_generator/views/screens/sign_up/components/signup_body.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: darkBackgroundColor,
      body: SafeArea(
        child: SignupBody(),
      ),
    );
  }
}
