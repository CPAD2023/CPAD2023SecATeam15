import 'package:ai_image_generator/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:ai_image_generator/views/screens/home/components/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class SignUpOptions extends StatelessWidget {
  const SignUpOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () => FirebaseServices.signInwWithGoogle(),
          child: const IconContainer(
              widget: Icon(
              FontAwesomeIcons.google,
                size: 18,
                color: Colors.white,
              )),
        ),
      ],
    );
  }
}