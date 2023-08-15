import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LocalizationController extends GetxController {
  final Locale defaultLocale = const Locale('fa');
  final Locale enLocale = const Locale('en');

  var currentLocale = const Locale('fa').obs;
 
 String localeToString(Locale locale) {
    return '${locale.languageCode}_${locale.countryCode}';
  }

  Locale stringToLocale(String localeString) {
    final parts = localeString.split('_');
    if (parts.length == 2) {
      return Locale(parts[0], parts[1]);
    }
    return  const Locale('fa'); 
  }
  void setLocale(Locale locale) {
  currentLocale.value = locale;
  Get.updateLocale(locale);
  GetStorage().write('locale', localeToString(locale));
}
}
