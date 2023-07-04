import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';
import 'package:my_store_getx/constants/constans.dart';
import 'package:my_store_getx/controller/app_routes.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LottieBuilder.network(
                'https://assets7.lottiefiles.com/private_files/lf30_iraugwwv.json',
              ),
              const Text(
                'ورود',
                style: TextStyle(fontSize: 50),
              ),
              const Text('لطفا نام کاربری و رمز عبور رو وارد نماید . '),
              const SizedBox(height: 20),
              Column(
                children: [
                  TextField(
                    onTap: () {},
                    controller: nameController,
                    style: const TextStyle(color: Colors.red),
                    decoration: const InputDecoration(hintText: 'نام'),
                  ),
                  TextField(
                    onTap: () {},
                    controller: emailController,
                    style: const TextStyle(color: Colors.red),
                    decoration: const InputDecoration(hintText: 'ایمیل'),
                  ),
                  TextField(
                    onTap: () {},
                    controller: emailController,
                    style: const TextStyle(color: Colors.red),
                    decoration: const InputDecoration(hintText: 'رمز'),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'با شرایط و قوانین برنامه موافق هستم',
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('ثبت نام'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      children: [
                        const TextSpan(
                          text: 'حساب کاربری دارید ؟',
                        ),
                        TextSpan(
                          text: 'ورود',
                          style: const TextStyle(
                              color: Colors.green, fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Get.toNamed(AppRoutes.loginScreen);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
