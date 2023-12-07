import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignInBar extends StatelessWidget {
  const SignInBar({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children:[
        GradientText(
    'Sign In',
    style: TextStyle(
        fontSize: 45.0,
        fontWeight: FontWeight.bold,
    ),
    colors: [
        Colors.purpleAccent,
        Colors.pinkAccent,
        Colors.red,
        
    ],
),
      ],
    );
  }
}
