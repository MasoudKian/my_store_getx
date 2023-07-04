import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:my_store_getx/constants/constans.dart';
import 'package:my_store_getx/constants/widgets/custom_button.dart';
import 'package:my_store_getx/controller/app_routes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  cBackgroundSplash,
                  Colors.white70
                ],
              ),
            ),
            child: LottieBuilder.network(
                'https://assets7.lottiefiles.com/packages/lf20_Lr1UOG/dsgsd/data.json'),
          ),
          const Spacer(),
          const Text('WellCome To My Shop',style: TextStyle(fontSize: 35),),
          const SizedBox(height: 20,),
          const Text('امیدوارم یک خرید خوب انجام بدید'),
          const Text('و از وقتی که گذاشتید توی فروشگاه ما لذت ببرید'),
           CustomButton(onTapped: () {
             Get.offNamed(AppRoutes.homePage);
           },),
          const Spacer(),
          /// Use set Intro Package
        ],
      ),
    );
  }
}
