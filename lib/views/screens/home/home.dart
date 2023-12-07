import 'package:ai_image_generator/Utils/app_color.dart';
import 'package:ai_image_generator/views/screens/home/components/homescreen_body.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: darkBackgroundColor,
      body: SafeArea(
        child: HomeScreenBody()),
      
    );
  }
}
