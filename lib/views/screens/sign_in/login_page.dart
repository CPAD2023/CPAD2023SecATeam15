import 'package:ai_image_generator/Utils/app_color.dart';
import 'package:ai_image_generator/views/screens/sign_in/components/signin_body.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:darkBackgroundColor,
      body: SafeArea(
        child: SignInBody(),
      ),
    );
  }
}
