import 'package:get/get.dart';
import 'package:my_store_getx/controller/splash_screen_controller.dart';

class AppBinding implements Bindings{
  @override
  void dependencies() {
    Get.put<SplashScreenController>(SplashScreenController());
  }

}