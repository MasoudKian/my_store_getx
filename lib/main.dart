import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_store_getx/controller/app_binding.dart';

import 'controller/app_routes.dart';

void main() {
  runApp( const MyStoreGetX());
}

class MyStoreGetX extends StatelessWidget {
  const MyStoreGetX({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      title: 'Online Shop',
      locale: const Locale('fa','IR'),
      debugShowCheckedModeBanner: false,
      initialBinding: AppBinding(),
      getPages: AppRoutes.getPages,
      initialRoute: AppRoutes.splashScreen,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 200),
    );
  }
}


