// ignore_for_file: library_private_types_in_public_api

import 'package:ai_image_generator/Utils/app_color.dart';
import 'package:ai_image_generator/controllers/shared_pref.dart';
import 'package:ai_image_generator/views/screens/home/home.dart';
import 'package:ai_image_generator/views/screens/navigation_drawer.dart';
import 'package:ai_image_generator/views/screens/sign_in/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';


class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
     const Duration(seconds:3),(){
       
       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>const SignIn()), (route) => false);
    //  UserPref.getUser().then((value) => 
    //  {
    //   print(value),
    //   if(value.isEmpty){
      
        

    //  }else{
    //    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context)=>const HomePage()), (route) => false)
    //  }}
     
    //  );
 
       
       

      });
    
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueDarkBackgroundColor,
      body: ListView(children: [ Lottie.asset('assets/lotus.json'),],))
      
    ;
  }
}