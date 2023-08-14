import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalizationController extends GetxController {
  final Locale defaultLocale = const Locale('fa');
  final Locale enLocale = const Locale('en');

  var currentLocale = const Locale('fa').obs;

  @override
  void onInit() {
    super.onInit();
    final savedLocale = GetStorage().read('locale');
    if (savedLocale != null) {
      setLocale(savedLocale);
    }
  }

  void setLocale(Locale locale) {
    currentLocale.value = locale;
    Get.updateLocale(locale);
    GetStorage().write('locale', locale);
  }
}
