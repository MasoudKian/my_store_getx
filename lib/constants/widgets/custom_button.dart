import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_store_getx/constants/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onTapped});

  final VoidCallback onTapped;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: cBackgroundSplash,
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          splashColor: cBackgroundSplash,
          onTap: onTapped,
          child: SizedBox(
            width: Get.width,
            height: 65,
            child: const Center(
              child: Text('بزن بریم خرید'),
            ),
          ),
        ),
      ),
    );
  }
}
