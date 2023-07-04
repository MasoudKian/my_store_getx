import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_store_getx/ui/view/home_page.dart';
import 'package:my_store_getx/ui/view/intro_screen.dart';

class SplashScreenController extends GetxController {
  final RxString _connectionStatus = '-1'.obs;
  final Rx<Connectivity> _connectivity = Connectivity().obs;
  Rx<ConnectivityResult> result = ConnectivityResult.none.obs;

  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        _connectionStatus.value = 'wifi net';
        break;
      case ConnectivityResult.mobile:
        _connectionStatus.value = 'mobile net';
        break;
      case ConnectivityResult.none:
        _connectionStatus.value = '-1';
        Get.snackbar(
          'اتصال اینترنت برقرار نیست',
          'لطفا اینترنت خود را بررسی کنید',
          snackPosition: SnackPosition.TOP,
        );
        break;
      default:
        _connectionStatus.value = 'Failed to get connectivity.';
        break;
    }
    if (_connectionStatus.value != '-1') {
      Future.delayed(const Duration(seconds: 5), () {
        Get.to(() => const IntroScreen());
      });
    }
  }

  Future<void> initConnectivity() async {
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result.value = await _connectivity.value.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    return _updateConnectionStatus(result.value);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initConnectivity();
    ever(result, (_) {
      _connectivity.value.onConnectivityChanged.listen(_updateConnectionStatus);
    });
  }
}
