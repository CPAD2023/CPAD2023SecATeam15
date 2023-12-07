import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeScreenBar extends StatelessWidget {
  const HomeScreenBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
decoration: const  BoxDecoration( gradient: LinearGradient(colors: [
                Colors.purpleAccent,
                Colors.pink,
              ]),borderRadius: BorderRadius.all(Radius.circular(11))),
              padding: const EdgeInsets.symmetric(horizontal: 1,vertical: 1),
              
              
      child: Container(
    
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      decoration: const BoxDecoration(
          color:Color.fromARGB(255, 29, 0, 29),
        
        borderRadius: BorderRadius.all(Radius.circular(10))),
    child: Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        GradientText(
    'AstralAI',
    style: const TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
    ),
    colors: const [
        Colors.purpleAccent,
        Colors.pinkAccent,
        Colors.red,
        
    ],
),const Icon(Icons.settings_outlined,color: Colors.purpleAccent)
      ],
    ))
    );
  }
}
