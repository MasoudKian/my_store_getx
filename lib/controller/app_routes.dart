import 'package:get/get.dart';
import 'package:my_store_getx/ui/view/home_page.dart';
import 'package:my_store_getx/ui/view/intro_screen.dart';
import 'package:my_store_getx/ui/view/login_screen.dart';
import 'package:my_store_getx/ui/view/register_screen.dart';
import 'package:my_store_getx/ui/view/splash_screen.dart';

class AppRoutes{
  static const String splashScreen = '/splash';
  static const String introScreen = '/intro';
  static const String homePage = '/home';
  static const String loginScreen = '/login';
  static const String registerScreen = '/register';

  static final List<GetPage> getPages = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: introScreen, page: () => const IntroScreen()),
    GetPage(name: homePage, page: () => const HomePage()),
    GetPage(name: loginScreen, page: () =>  LoginScreen()),
    GetPage(name: registerScreen, page: () =>  RegisterScreen()),
  ];
}