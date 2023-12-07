import 'package:ai_image_generator/views/screens/sign_in/components/signin_body.dart';
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SignInBody(),
      ),
    );
  }
}
