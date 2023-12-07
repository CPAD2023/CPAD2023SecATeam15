import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


class SignUpBar extends StatelessWidget {
  const SignUpBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
       const SizedBox(
          width: 20,
        ),
        
       GradientText(
    'Sign Up',
    style:const TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
    ),
    colors: const [
        Colors.purpleAccent,
        Colors.pinkAccent,
        Colors.red,
        
    ],
),
      ],
    );
  }
}