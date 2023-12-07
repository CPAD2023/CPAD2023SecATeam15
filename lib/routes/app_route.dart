import 'package:ai_image_generator/routes/routes.dart';
import 'package:ai_image_generator/views/screens/home/home.dart';
import 'package:ai_image_generator/views/screens/home/settings.dart';
import 'package:ai_image_generator/views/screens/sign_in/login_page.dart';
import 'package:ai_image_generator/views/screens/sign_up/sign_up_page.dart';
import 'package:ai_image_generator/views/screens/splash.dart';
import 'package:get/get.dart';

class AppRoutes{
  static List<GetPage> routes(){
    return [
      GetPage(name: Routes.splashScreen, page: ()=>const Splash()),
      GetPage(name: Routes.signUpScreen, page: ()=>const SignUp()),
      GetPage(name: Routes.signInScreen, page: ()=>const SignIn()),
      GetPage(name: Routes.homePage, page: ()=> const HomePage()),
      GetPage(name: Routes.settings, page: ()=>  const SettingsPage()),
    ];
  }
}