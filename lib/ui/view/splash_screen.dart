import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:lottie/lottie.dart';
import 'package:my_store_getx/constants/constans.dart';
import 'package:my_store_getx/controller/splash_screen_controller.dart';

class SplashScreen extends GetView<SplashScreenController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                cBackgroundSplash,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Image.asset('assets/images/splash.png'),
              ),
              const SizedBox(
                height: 150,
              ),
              const Spacer(),
              const Text(
                'WellCome',
                style: TextStyle(fontSize: 30, color: Color(0xff3DA5D9)),
              ),
              SizedBox(
                width: 100,
                child: LottieBuilder.asset('assets/images/loading.zip'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
